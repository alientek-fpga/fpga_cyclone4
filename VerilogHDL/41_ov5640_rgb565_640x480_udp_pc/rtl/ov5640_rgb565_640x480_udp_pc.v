//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           ov5640_rgb565_640x480_udp_pc
// Last modified Date:  2018/3/21 13:58:23
// Last Version:        V1.0
// Descriptions:        以太网传输视频（OV5640）上位机显示
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/21 13:58:23
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module ov5640_rgb565_640x480_udp_pc(    
    input                 sys_clk     ,  //系统时钟
    input                 sys_rst_n   ,  //系统复位，低电平有效
    //摄像头接口
    input                 cam_pclk    ,  //cmos 数据像素时钟
    input                 cam_vsync   ,  //cmos 场同步信号
    input                 cam_href    ,  //cmos 行同步信号
    input        [7:0]    cam_data    ,  //cmos 数据  
    output                cam_rst_n   ,  //cmos 复位信号，低电平有效
    output                cam_pwdn    ,  //cmos 电源休眠模式选择信号
    output                cam_scl     ,  //cmos SCCB_SCL线
    inout                 cam_sda     ,  //cmos SCCB_SDA线
    //SDRAM接口
    output                sdram_clk   ,  //SDRAM 时钟
    output                sdram_cke   ,  //SDRAM 时钟有效
    output                sdram_cs_n  ,  //SDRAM 片选
    output                sdram_ras_n ,  //SDRAM 行有效
    output                sdram_cas_n ,  //SDRAM 列有效
    output                sdram_we_n  ,  //SDRAM 写有效
    output       [1:0]    sdram_ba    ,  //SDRAM Bank地址
    output       [1:0]    sdram_dqm   ,  //SDRAM 数据掩码
    output       [12:0]   sdram_addr  ,  //SDRAM 地址
    inout        [15:0]   sdram_data  ,  //SDRAM 数据    
    //以太网接口   
    input                 eth_rx_clk  ,  //MII接收数据时钟
    input                 eth_rxdv    ,  //MII输入数据有效信号
    input                 eth_tx_clk  ,  //MII发送数据时钟
    input        [3:0]    eth_rx_data ,  //MII输入数据
    output                eth_tx_en   ,  //MII输出数据有效信号
    output       [3:0]    eth_tx_data ,  //MII输出数据          
    output                eth_rst_n      //以太网芯片复位信号，低电平有效   
    );

//parameter define
parameter  SLAVE_ADDR = 7'h3c         ;  //OV5640的器件地址7'h3c
parameter  BIT_CTRL   = 1'b1          ;  //OV5640的字节地址为16位  0:8位 1:16位
parameter  CLK_FREQ   = 26'd25_000_000;  //i2c_dri模块的驱动时钟频率 25MHz
parameter  I2C_FREQ   = 18'd250_000   ;  //I2C的SCL时钟频率,不超过400KHz
parameter  CMOS_H_PIXEL = 24'd640     ;  //CMOS水平方向像素个数,用于设置SDRAM缓存大小
parameter  CMOS_V_PIXEL = 24'd480     ;  //CMOS垂直方向像素个数,用于设置SDRAM缓存大小

//开发板MAC地址 00-11-22-33-44-55
parameter  BOARD_MAC = 48'h00_11_22_33_44_55;     
//开发板IP地址 192.168.1.123       
parameter  BOARD_IP  = {8'd192,8'd168,8'd1,8'd123};  
//目的MAC地址 ff_ff_ff_ff_ff_ff
parameter  DES_MAC   = 48'hff_ff_ff_ff_ff_ff;    
//目的IP地址 192.168.1.102     
parameter  DES_IP    = {8'd192,8'd168,8'd1,8'd102};  

//wire define
wire                  clk_100m        ;  //100mhz时钟,SDRAM操作时钟
wire                  clk_100m_shift  ;  //100mhz时钟,SDRAM相位偏移时钟
wire                  clk_25m         ;  //25mhz时钟,作为IIC驱动时钟
wire                  locked          ;
wire                  rst_n           ;

wire                  i2c_exec        ;  //I2C触发执行信号
wire   [23:0]         i2c_data        ;  //I2C要配置的地址与数据(高8位地址,低8位数据)          
wire                  cam_init_done   ;  //摄像头初始化完成
wire                  i2c_done        ;  //I2C寄存器配置完成信号
wire                  i2c_dri_clk     ;  //I2C操作时钟
                                      
wire                  wr_en           ;  //sdram_ctrl模块写使能
wire   [15:0]         wr_data         ;  //sdram_ctrl模块写数据
wire                  rd_en           ;  //sdram_ctrl模块读使能
wire   [15:0]         rd_data         ;  //sdram_ctrl模块读数据
wire                  sdram_init_done ;  //SDRAM初始化完成
wire                  sys_init_done   ;  //系统初始化完成(sdram初始化+摄像头初始化)

wire                  udp_tx_req      ;  //udp发送数据请求信号
wire                  udp_tx_done     ;  //udp发送数据完成
wire                  tx_start_en     ;  //udp开始发送信号
wire   [31:0]         tx_data         ;  //udp发送的数据
wire   [15:0]         tx_byte_num     ;  //udp单包发送的有效字节数

//*****************************************************
//**                    main code
//*****************************************************

assign  rst_n = sys_rst_n & locked;
//系统初始化完成：SDRAM和摄像头都初始化完成
//避免了在SDRAM初始化过程中向里面写入数据
assign  sys_init_done = sdram_init_done & cam_init_done;
//不对摄像头硬件复位,固定高电平
assign  cam_rst_n = 1'b1;
//电源休眠模式选择 0：正常模式 1：电源休眠模式
assign  cam_pwdn = 1'b0;

//锁相环
pll_clk u_pll_clk(
    .areset       (~sys_rst_n),
    .inclk0       (sys_clk),
    .c0           (clk_100m),
    .c1           (clk_100m_shift),
    .c2           (clk_25m),
    .locked       (locked)
    );

//I2C配置模块
i2c_ov5640_rgb565_cfg 
   #(
     .CMOS_H_PIXEL  (CMOS_H_PIXEL),
     .CMOS_V_PIXEL  (CMOS_V_PIXEL)
    )
   u_i2c_cfg(
    .clk           (i2c_dri_clk),
    .rst_n         (rst_n),
    .i2c_done      (i2c_done),
    .i2c_exec      (i2c_exec),
    .i2c_data      (i2c_data),
    .init_done     (cam_init_done)
    );    

//I2C驱动模块
i2c_dri 
   #(
    .SLAVE_ADDR  (SLAVE_ADDR),               //参数传递
    .CLK_FREQ    (CLK_FREQ  ),              
    .I2C_FREQ    (I2C_FREQ  )                
    ) 
   u_i2c_dri(
    .clk         (clk_25m   ),
    .rst_n       (rst_n     ),   
    //i2c interface
    .i2c_exec    (i2c_exec  ),   
    .bit_ctrl    (BIT_CTRL  ),   
    .i2c_rh_wl   (1'b0),                     //固定为0，只用到了IIC驱动的写操作   
    .i2c_addr    (i2c_data[23:8]),   
    .i2c_data_w  (i2c_data[7:0]),   
    .i2c_data_r  (),   
    .i2c_done    (i2c_done  ),   
    .scl         (cam_scl   ),   
    .sda         (cam_sda   ),   
    //user interface
    .dri_clk     (i2c_dri_clk)               //I2C操作时钟
);

//CMOS图像数据采集模块
cmos_capture_data u_cmos_capture_data(
    .rst_n               (rst_n & sys_init_done), //系统初始化完成之后再开始采集数据 
    .cam_pclk            (cam_pclk),
    .cam_vsync           (cam_vsync),
    .cam_href            (cam_href),
    .cam_data            (cam_data),         
    .cmos_frame_vsync    (),
    .cmos_frame_href     (),
    .cmos_frame_valid    (wr_en),            //数据有效使能信号
    .cmos_frame_data     (wr_data)           //有效数据 
    );

//SDRAM 控制器顶层模块,封装成FIFO接口
//SDRAM 控制器地址组成: {bank_addr[1:0],row_addr[12:0],col_addr[8:0]}
sdram_top u_sdram_top(
 .ref_clk      (clk_100m),                   //sdram 控制器参考时钟
 .out_clk      (clk_100m_shift),             //用于输出的相位偏移时钟
 .rst_n        (rst_n),                      //系统复位
                                             
  //用户写端口                                  
 .wr_clk       (cam_pclk),                   //写端口FIFO: 写时钟
 .wr_en        (wr_en),                      //写端口FIFO: 写使能
 .wr_data      (wr_data),                    //写端口FIFO: 写数据
 .wr_min_addr  (24'd0),                      //写SDRAM的起始地址
 .wr_max_addr  (CMOS_H_PIXEL*CMOS_V_PIXEL),  //写SDRAM的结束地址
 .wr_len       (10'd512),                    //写SDRAM时的数据突发长度
 .wr_load      (~rst_n),                     //写端口复位: 复位写地址,清空写FIFO
                                             
  //用户读端口                                  
 .rd_clk       (eth_tx_clk),                 //读端口FIFO: 读时钟
 .rd_en        (rd_en),                      //读端口FIFO: 读使能
 .rd_data      (rd_data),                    //读端口FIFO: 读数据
 .rd_min_addr  (24'd0),                      //读SDRAM的起始地址
 .rd_max_addr  (CMOS_H_PIXEL*CMOS_V_PIXEL),  //读SDRAM的结束地址
 .rd_len       (10'd512),                    //从SDRAM中读数据时的突发长度
 .rd_load      (~rst_n),                     //读端口复位: 复位读地址,清空读FIFO
                                             
 //用户控制端口                                
 .sdram_read_valid  (1'b1),                  //SDRAM 读使能
 .sdram_pingpang_en (1'b0),                  //SDRAM 乒乓操作使能
 .sdram_init_done (sdram_init_done),         //SDRAM 初始化完成标志
                                             
 //SDRAM 芯片接口                                
 .sdram_clk    (sdram_clk),                  //SDRAM 芯片时钟
 .sdram_cke    (sdram_cke),                  //SDRAM 时钟有效
 .sdram_cs_n   (sdram_cs_n),                 //SDRAM 片选
 .sdram_ras_n  (sdram_ras_n),                //SDRAM 行有效
 .sdram_cas_n  (sdram_cas_n),                //SDRAM 列有效
 .sdram_we_n   (sdram_we_n),                 //SDRAM 写有效
 .sdram_ba     (sdram_ba),                   //SDRAM Bank地址
 .sdram_addr   (sdram_addr),                 //SDRAM 行/列地址
 .sdram_data   (sdram_data),                 //SDRAM 数据
 .sdram_dqm    (sdram_dqm)                   //SDRAM 数据掩码
    );

//图像数据封装模块
img_data_pkt
  #(
    .CMOS_H_PIXEL         (CMOS_H_PIXEL),
    .CMOS_V_PIXEL         (CMOS_V_PIXEL)
    )
    u_img_data_pkt(
    .clk                  (eth_tx_clk),
    .rst_n                (rst_n & sys_init_done),
    .img_data             (rd_data),
    .udp_tx_req           (udp_tx_req),
    .udp_tx_done          (udp_tx_done),
    .img_req              (rd_en),
    .udp_tx_start_en      (tx_start_en),
    .udp_tx_data          (tx_data),
    .udp_tx_byte_num      (tx_byte_num)
    );

//UDP模块
udp                                          
   #(
    .BOARD_MAC       (BOARD_MAC),             //参数例化
    .BOARD_IP        (BOARD_IP ),
    .DES_MAC         (DES_MAC  ),
    .DES_IP          (DES_IP   )
    )
   u_udp(
    .eth_rx_clk      (eth_rx_clk  ),
    .rst_n           (rst_n       ),
    .eth_rxdv        (eth_rxdv    ),
    .eth_rx_data     (eth_rx_data ),
    .eth_tx_clk      (eth_tx_clk  ),
    .tx_start_en     (tx_start_en ),
    .tx_data         (tx_data     ),
    .tx_byte_num     (tx_byte_num ),
    .tx_done         (udp_tx_done ),
    .tx_req          (udp_tx_req  ),
    .rec_pkt_done    (),
    .rec_en          (),
    .rec_data        (),
    .rec_byte_num    (),
    .eth_tx_en       (eth_tx_en   ),
    .eth_tx_data     (eth_tx_data ),
    .eth_rst_n       (eth_rst_n   ) 
    ); 

endmodule