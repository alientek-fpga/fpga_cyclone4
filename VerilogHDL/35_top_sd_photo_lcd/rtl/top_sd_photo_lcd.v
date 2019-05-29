//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           top_sd_photo_lcd
// Last modified Date:  2018/3/18 8:41:06
// Last Version:        V1.0
// Descriptions:        SD LCD图片显示实验
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/18 8:41:06
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module top_sd_photo_lcd(
    input                 sys_clk     ,  //系统时钟
    input                 sys_rst_n   ,  //系统复位，低电平有效
                          
    //SD卡接口               
    input                 sd_miso     ,  //SD卡SPI串行输入数据信号
    output                sd_clk      ,  //SD卡SPI时钟信号
    output                sd_cs       ,  //SD卡SPI片选信号
    output                sd_mosi     ,  //SD卡SPI串行输出数据信号
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
    //lcd接口                          
    output                lcd_hs      ,  //LCD 行同步信号
    output                lcd_vs      ,  //LCD 场同步信号
    output                lcd_de      ,  //LCD 数据输入使能
    output       [15:0]   lcd_rgb     ,  //LCD RGB565颜色数据
    output                lcd_bl      ,  //LCD 背光控制信号
    output                lcd_rst     ,  //LCD 复位信号
    output                lcd_pclk       //LCD 采样时钟   
    );

//parameter define
parameter  PHOTO_H_PIXEL = 24'd800    ;  //设置SDRAM缓存大小
parameter  PHOTO_V_PIXEL = 24'd480    ;  //设置SDRAM缓存大小

//wire define
wire                  clk_100m        ;  //100mhz时钟,SDRAM操作时钟  
wire                  clk_100m_shift  ;  //100mhz时钟,SDRAM相位偏移时钟
wire                  clk_50m         ;
wire                  clk_50m_180deg  ;
wire                  clk_33_3m       ;
wire                  rst_n           ;
wire                  locked          ;
wire                  sys_init_done   ;  //系统初始化完成
                                      
wire                  sd_rd_start_en  ;  //开始写SD卡数据信号
wire          [31:0]  sd_rd_sec_addr  ;  //读数据扇区地址    
wire                  sd_rd_busy      ;  //读忙信号
wire                  sd_rd_val_en    ;  //数据读取有效使能信号
wire          [15:0]  sd_rd_val_data  ;  //读数据
wire                  sd_init_done    ;  //SD卡初始化完成信号

wire                  wr_en           ;  //sdram_ctrl模块写使能
wire   [15:0]         wr_data         ;  //sdram_ctrl模块写数据
wire                  rd_en           ;  //sdram_ctrl模块读使能
wire   [15:0]         rd_data         ;  //sdram_ctrl模块读数据
wire                  sdram_init_done ;  //SDRAM初始化完成

//*****************************************************
//**                    main code
//*****************************************************

assign  rst_n = sys_rst_n & locked;
assign  sys_init_done = sd_init_done & sdram_init_done;  //SD卡和SDRAM都初始化完成
assign  wr_en = sd_rd_val_en;
assign  wr_data = sd_rd_val_data;

//锁相环
pll_clk u_pll_clk(
    .areset       (1'b0           ),
    .inclk0       (sys_clk        ),
    .c0           (clk_100m       ),
    .c1           (clk_100m_shift ),
    .c2           (clk_50m        ),
    .c3           (clk_50m_180deg ),
    .c4           (clk_33_3m      ),
    .locked       (locked         )
    );

//读取SD卡图片
sd_read_photo u_sd_read_photo(
    .clk             (clk_50m),
    //系统初始化完成之后,再开始从SD卡中读取图片
    .rst_n           (rst_n & sys_init_done), 
    .rd_busy         (sd_rd_busy),
    .rd_start_en     (sd_rd_start_en),
    .rd_sec_addr     (sd_rd_sec_addr)
    );     

//SD卡顶层控制模块
sd_ctrl_top u_sd_ctrl_top(
    .clk_ref           (clk_50m),
    .clk_ref_180deg    (clk_50m_180deg),
    .rst_n             (rst_n),
    //SD卡接口
    .sd_miso           (sd_miso),
    .sd_clk            (sd_clk),
    .sd_cs             (sd_cs),
    .sd_mosi           (sd_mosi),
    //用户写SD卡接口
    .wr_start_en       (1'b0),               //不需要写入数据,写入接口赋值为0
    .wr_sec_addr       (32'b0),
    .wr_data           (16'b0),
    .wr_busy           (),
    .wr_req            (),
    //用户读SD卡接口
    .rd_start_en       (sd_rd_start_en),
    .rd_sec_addr       (sd_rd_sec_addr),
    .rd_busy           (sd_rd_busy),
    .rd_val_en         (sd_rd_val_en),
    .rd_val_data       (sd_rd_val_data),    
    
    .sd_init_done      (sd_init_done)
    );  

//SDRAM 控制器顶层模块,封装成FIFO接口
//SDRAM 控制器地址组成: {bank_addr[1:0],row_addr[12:0],col_addr[8:0]}
sdram_top u_sdram_top(
 .ref_clk      (clk_100m),                   //sdram 控制器参考时钟
 .out_clk      (clk_100m_shift),             //用于输出的相位偏移时钟
 .rst_n        (rst_n),                      //系统复位
                                             
  //用户写端口                                   
 .wr_clk       (clk_50m),                    //写端口FIFO: 写时钟
 .wr_en        (wr_en),                      //写端口FIFO: 写使能
 .wr_data      (wr_data),                    //写端口FIFO: 写数据
 .wr_min_addr  (24'd0),                      //写SDRAM的起始地址
 .wr_max_addr  (PHOTO_H_PIXEL*PHOTO_V_PIXEL),//写SDRAM的结束地址
 .wr_len       (10'd512),                    //写SDRAM时的数据突发长度
 .wr_load      (~rst_n),                     //写端口复位: 复位写地址,清空写FIFO
                                             
  //用户读端口                                  
 .rd_clk       (clk_33_3m),                  //读端口FIFO: 读时钟
 .rd_en        (rd_en),                      //读端口FIFO: 读使能
 .rd_data      (rd_data),                    //读端口FIFO: 读数据
 .rd_min_addr  (24'd0),                      //读SDRAM的起始地址
 .rd_max_addr  (PHOTO_H_PIXEL*PHOTO_V_PIXEL),//读SDRAM的结束地址
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

//lcd驱动模块    
lcd_driver u_lcd_driver(                      
    .lcd_clk        (clk_33_3m),    
    .sys_rst_n      (rst_n),    

    .lcd_hs         (lcd_hs),       
    .lcd_vs         (lcd_vs),       
    .lcd_de         (lcd_de),       
    .lcd_rgb        (lcd_rgb),
    .lcd_bl         (lcd_bl),
    .lcd_rst        (lcd_rst),
    .lcd_pclk       (lcd_pclk),
    
    .pixel_data     (rd_data), 
    .data_req       (rd_en),                 //请求像素点颜色数据输入
    .pixel_xpos     (), 
    .pixel_ypos     ()
    );     

endmodule