//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                                  
//----------------------------------------------------------------------------------------
// File name:           eth_sdram_lcd
// Last modified Date:  2018/1/30 11:12:36
// Last Version:        V1.1
// Descriptions:        以太网传输图片到SDRAM中，通过RGB LCD显示
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/1/29 10:55:56
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module eth_sdram_lcd(
    input         clk,                      //FPGA外部时钟，50MHz
    input         rst_n,                    //按键复位，低电平有效
    //以太网接口   
    input         eth_rx_clk,               //MII接收数据时钟
    input         eth_rxdv,                 //MII输入数据有效信号
    input  [ 3:0] eth_rx_data,              //MII输入数据      
    output        eth_tx_en,                //MII输出数据有效信号
    output        eth_rst_n,                //以太网芯片复位信号，低电平有效  
    //SDRAM接口 
    output        sdram_clk,                //SDRAM 芯片时钟
    output        sdram_cke,                //SDRAM 时钟有效
    output        sdram_cs_n,               //SDRAM 片选
    output        sdram_ras_n,              //SDRAM 行有效
    output        sdram_cas_n,              //SDRAM 列有效
    output        sdram_we_n,               //SDRAM 写有效
    output [ 1:0] sdram_ba,                 //SDRAM Bank地址
    output [12:0] sdram_addr,               //SDRAM 行/列地址
    inout  [15:0] sdram_data,               //SDRAM 数据
    output [ 1:0] sdram_dqm,                //SDRAM 数据掩码
    //RGB LCD接口
    output        lcd_hs,                   //LCD 行同步信号
    output        lcd_vs,                   //LCD 场同步信号
    output        lcd_de,                   //LCD 数据输入使能
    output [15:0] lcd_rgb,                  //LCD RGB565颜色数据
    output        lcd_bl,                   //LCD 背光控制信号
    output        lcd_rst,                  //LCD 复位信号
    output        lcd_pclk                  //LCD 采样时钟
    );
    
//parameter define
//开发板MAC地址 00-11-22-33-44-55
parameter  BOARD_MAC = 48'h00_11_22_33_44_55;
//开发板IP地址 192.168.1.123       
parameter  BOARD_IP  = {8'd192,8'd168,8'd1,8'd123};
//目的MAC地址 ff_ff_ff_ff_ff_ff
parameter  DES_MAC   = 48'hff_ff_ff_ff_ff_ff;
//目的IP地址 192.168.1.102     
parameter  DES_IP    = {8'd192,8'd168,8'd1,8'd102};

//wire define
wire        lcd_clk;                        //RGB LCD驱动时钟,33.33MHz
wire        clk_100m;                       //SDRAM 控制器时钟
wire        clk_100m_shift;                 //相位偏移时钟

wire        locked;                         //PLL输出有效标志
wire        sys_rst_n;                      //系统复位信号
wire        sdram_init_done;                //SDRAM 初始化完成标志

wire        udp_rec_en;                     //以太网接收的数据有效信号
wire [31:0] udp_rec_data;                   //以太网接收的数据

wire        wr_en;                          //SDRAM 写端口:写使能
wire [15:0] wr_data;                        //SDRAM 写端口:写入的数据
wire        rd_en;                          //SDRAM 读端口:读使能
wire [15:0] rd_data;                        //SDRAM 读端口:读出的数据

//*****************************************************
//**                    main code
//*****************************************************

//待PLL输出稳定之后，停止系统复位
assign sys_rst_n = rst_n & locked;

//例化PLL, 产生各模块所需要的时钟
pll_clk u_pll_clk(
    .inclk0             (clk),
    .areset             (~rst_n),
    
    .c0                 (lcd_clk),
    .c1                 (clk_100m),
    .c2                 (clk_100m_shift),
    .locked             (locked)
    );

//UDP模块接收网口数据
udp #(
    .BOARD_MAC          (BOARD_MAC),        //开发板MAC地址
    .BOARD_IP           (BOARD_IP),         //开发板IP地址
    .DES_MAC            (DES_MAC),          //目的MAC地址
    .DES_IP             (DES_IP)            //目的IP地址
    )
u_udp(
    .rst_n              (sys_rst_n),       
    
    .eth_rx_clk         (eth_rx_clk),       //MII接收数据时钟
    .eth_rxdv           (eth_rxdv),         //MII输入数据有效信号
    .eth_rx_data        (eth_rx_data),      //MII输入数据
    .eth_rst_n          (eth_rst_n),        //以太网芯片复位信号，低电平有效 
    .rec_en             (udp_rec_en),       //以太网接收的数据有效信号
    .rec_data           (udp_rec_data),     //以太网接收的数据
    .rec_pkt_done       (),                 //以太网单包数据接收完成信号
    .rec_byte_num       (),                 //以太网接收的有效字节数 单位:byte
    
    .eth_tx_clk         (),           
    .eth_tx_en          (eth_tx_en),        //MII输出数据有效信号
    .tx_start_en        (),        
    .tx_data            (),         
    .tx_byte_num        (),    
    .tx_done            (),        
    .tx_req             (),                           
    .eth_tx_data        ()
    ); 
    
//将UDP模块接收到的32bit数据转换成16bit数据    
udp_32_to_16bit(
    .eth_rx_clk         (eth_rx_clk),
    .rst_n              (sys_rst_n),
    
    .udp_rec_en         (udp_rec_en),
    .udp_rec_data       (udp_rec_data),    
    .udp_rec_en_16      (wr_en),
    .udp_rec_data_16    (wr_data)
    );
    
//SDRAM 控制器顶层模块,封装成FIFO接口
//SDRAM 控制器地址组成: {bank_addr[1:0],row_addr[12:0],col_addr[8:0]}
sdram_top u_sdram_top(
	.ref_clk			(clk_100m),			//sdram	控制器参考时钟
	.out_clk			(clk_100m_shift),	//用于输出的相位偏移时钟
	.rst_n				(sys_rst_n),		//系统复位
    
    //用户写端口
	.wr_clk 			(eth_rx_clk),	    //写端口FIFO: 写时钟
	.wr_en				(wr_en),			//写端口FIFO: 写使能
	.wr_data		    (wr_data),		    //写端口FIFO: 写数据
	.wr_min_addr		(24'd0),			//写SDRAM的起始地址
	.wr_max_addr		(24'd800*24'd480),	//写SDRAM的结束地址
	.wr_len			    (10'd512),			//写SDRAM时的数据突发长度
	.wr_load			(~sys_rst_n),		//写端口复位: 复位写地址,清空写FIFO
   
    //用户读端口
	.rd_clk 			(lcd_clk),			//读端口FIFO: 读时钟
    .rd_en				(rd_en),			//读端口FIFO: 读使能
	.rd_data	    	(rd_data),		    //读端口FIFO: 读数据
	.rd_min_addr		(24'd0),			//读SDRAM的起始地址
	.rd_max_addr		(24'd800*24'd480),	//读SDRAM的结束地址
	.rd_len 			(10'd512),			//从SDRAM中读数据时的突发长度
	.rd_load			(~sys_rst_n),		//读端口复位: 复位读地址,清空读FIFO
	   
     //用户控制端口  
	.sdram_read_valid	(1'b1),             //SDRAM 读使能
	.sdram_init_done	(sdram_init_done),	//SDRAM 初始化完成标志
   
	//SDRAM 芯片接口
	.sdram_clk			(sdram_clk),        //SDRAM 芯片时钟
	.sdram_cke			(sdram_cke),        //SDRAM 时钟有效
	.sdram_cs_n			(sdram_cs_n),       //SDRAM 片选
	.sdram_ras_n		(sdram_ras_n),      //SDRAM 行有效
	.sdram_cas_n		(sdram_cas_n),      //SDRAM 列有效
	.sdram_we_n			(sdram_we_n),       //SDRAM 写有效
	.sdram_ba			(sdram_ba),         //SDRAM Bank地址
	.sdram_addr			(sdram_addr),       //SDRAM 行/列地址
	.sdram_data			(sdram_data),       //SDRAM 数据
	.sdram_dqm			(sdram_dqm)         //SDRAM 数据掩码
    );
    
//RGB LCD驱动模块
lcd_driver u_lcd_driver(            
    .lcd_clk            (lcd_clk),    
    .sys_rst_n          (sdram_init_done),    

    .lcd_hs             (lcd_hs),       
    .lcd_vs             (lcd_vs),       
    .lcd_de             (lcd_de),       
    .lcd_rgb            (lcd_rgb),
    .lcd_bl             (lcd_bl),
    .lcd_rst            (lcd_rst),
    .lcd_pclk           (lcd_pclk),
    
    .data_req           (rd_en),
    .pixel_data         (rd_data), 
    .pixel_xpos         (), 
    .pixel_ypos         ()
    ); 
    
endmodule 