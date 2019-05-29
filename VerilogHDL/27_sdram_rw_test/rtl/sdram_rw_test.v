//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           sdram_rw_test
// Last modified Date:  2018/3/18 8:41:06
// Last Version:        V1.0
// Descriptions:        SDRAM读写测试顶层模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/18 8:41:06
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module sdram_rw_test(
    input         clk,                      //FPGA外部时钟，50M
    input         rst_n,                    //按键复位，低电平有效
    //SDRAM 芯片接口
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
    //LED
    output        led                       //状态指示灯
    );
    
//wire define
wire        clk_50m;                        //SDRAM 读写测试时钟
wire        clk_100m;                       //SDRAM 控制器时钟
wire        clk_100m_shift;                 //相位偏移时钟
     
wire        wr_en;                          //SDRAM 写端口:写使能
wire [15:0] wr_data;                        //SDRAM 写端口:写入的数据
wire        rd_en;                          //SDRAM 读端口:读使能
wire [15:0] rd_data;                        //SDRAM 读端口:读出的数据
wire        sdram_init_done;                //SDRAM 初始化完成信号

wire        locked;                         //PLL输出有效标志
wire        sys_rst_n;                      //系统复位信号
wire        error_flag;                     //读写测试错误标志

//*****************************************************
//**                    main code
//***************************************************** 

//待PLL输出稳定之后，停止系统复位
assign sys_rst_n = rst_n & locked;

//例化PLL, 产生各模块所需要的时钟
pll_clk u_pll_clk(
    .inclk0             (clk),
    .areset             (~rst_n),
    
    .c0                 (clk_50m),
    .c1                 (clk_100m),
    .c2                 (clk_100m_shift),
    .locked             (locked)
    );

//SDRAM测试模块，对SDRAM进行读写测试
sdram_test u_sdram_test(
    .clk_50m            (clk_50m),
    .rst_n              (sys_rst_n),
    
    .wr_en              (wr_en),
    .wr_data            (wr_data),
    .rd_en              (rd_en),
    .rd_data            (rd_data),   
    
    .sdram_init_done    (sdram_init_done),    
    .error_flag         (error_flag)
    );

//利用LED灯指示SDRAM读写测试的结果
led_disp u_led_disp(
    .clk_50m            (clk_50m),
    .rst_n              (sys_rst_n),
   
    .error_flag         (error_flag),
    .led                (led)             
    );

//SDRAM 控制器顶层模块,封装成FIFO接口
//SDRAM 控制器地址组成: {bank_addr[1:0],row_addr[12:0],col_addr[8:0]}
sdram_top u_sdram_top(
	.ref_clk			(clk_100m),			//sdram	控制器参考时钟
	.out_clk			(clk_100m_shift),	//用于输出的相位偏移时钟
	.rst_n				(sys_rst_n),		//系统复位
    
    //用户写端口
	.wr_clk 			(clk_50m),		    //写端口FIFO: 写时钟
	.wr_en				(wr_en),			//写端口FIFO: 写使能
	.wr_data		    (wr_data),		    //写端口FIFO: 写数据
	.wr_min_addr		(24'd0),			//写SDRAM的起始地址
	.wr_max_addr		(24'd1024),		    //写SDRAM的结束地址
	.wr_len			    (10'd512),			//写SDRAM时的数据突发长度
	.wr_load			(~sys_rst_n),		//写端口复位: 复位写地址,清空写FIFO
   
    //用户读端口
	.rd_clk 			(clk_50m),			//读端口FIFO: 读时钟
    .rd_en				(rd_en),			//读端口FIFO: 读使能
	.rd_data	    	(rd_data),		    //读端口FIFO: 读数据
	.rd_min_addr		(24'd0),			//读SDRAM的起始地址
	.rd_max_addr		(24'd1024),	    	//读SDRAM的结束地址
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

endmodule 