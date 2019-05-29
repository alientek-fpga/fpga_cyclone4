//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved	                               
//----------------------------------------------------------------------------------------
// File name:           vga_display
// Last modified Date:  2018/1/30 11:12:36
// Last Version:        V1.1
// Descriptions:        vga显示图片
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/1/29 10:55:56
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
// Modified by:		    正点原子
// Modified date:	    2018/1/30 11:12:36
// Version:			    V1.1
// Descriptions:	    图片存储在片内ROM中，并通过VGA在屏幕上显示
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module vga_display(
    input             vga_clk,              //VGA驱动时钟
    input             sys_rst_n,            //复位信号
    
    input      [ 9:0] pixel_xpos,           //像素点横坐标
    input      [ 9:0] pixel_ypos,           //像素点纵坐标    
    output     [15:0] pixel_data            //像素点数据
    );    

//parameter define    
parameter  H_DISP = 10'd640;                //分辨率——行
parameter  V_DISP = 10'd480;                //分辨率——列

localparam POS_X  = 10'd270;                //图片区域起始点横坐标
localparam POS_Y  = 10'd190;                //图片区域起始点纵坐标
localparam WIDTH  = 10'd100;                //图片区域宽度
localparam HEIGHT = 10'd100;                //图片区域高度
localparam TOTAL  = 14'd10000;              //图案区域总像素数
localparam BLACK  = 16'b00000_000000_00000; //屏幕背景色

//reg define
wire        rom_rd_en;                      //读ROM使能信号
reg  [13:0] rom_addr;                       //读ROM地址
reg         rom_valid;                      //读ROM数据有效信号

//wire define   
wire [15:0] rom_data;                       //ROM输出数据

//*****************************************************
//**                    main code
//*****************************************************

//从ROM中读出的图像数据有效时，将其输出显示
assign pixel_data = rom_valid ? rom_data : BLACK; 

//当前像素点坐标位于图案显示区域内时，读ROM使能信号拉高
assign rom_rd_en = (pixel_xpos >= POS_X) && (pixel_xpos < POS_X + WIDTH)
                    && (pixel_ypos >= POS_Y) && (pixel_ypos < POS_Y + HEIGHT)
                     ? 1'b1 : 1'b0;

//控制读地址
always @(posedge vga_clk or negedge sys_rst_n) begin         
    if (!sys_rst_n) begin
        rom_addr   <= 14'd0;
    end
    else if(rom_rd_en) begin
        if(rom_addr < TOTAL - 1'b1)
            rom_addr <= rom_addr + 1'b1;    //每次读ROM操作后，读地址加1
        else
            rom_addr <= 1'b0;               //读到ROM末地址后，从首地址重新开始读操作
    end
    else
        rom_addr <= rom_addr;
end

//从发出读使能到ROM输出有效数据存在一个时钟周期的延时
always @(posedge vga_clk or negedge sys_rst_n) begin         
    if (!sys_rst_n) 
        rom_valid <= 1'b0;
    else
        rom_valid <= rom_rd_en;
end

//通过调用IP核来例化ROM
pic_rom	pic_rom_inst(
	.clock   (vga_clk),
	.address (rom_addr),
	.rden    (rom_rd_en),
	.q       (rom_data)
	);

endmodule 