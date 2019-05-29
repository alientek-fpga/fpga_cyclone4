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
// Descriptions:        vga字符显示模块
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
// Descriptions:	    在屏幕上显示汉字”正点原子”
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module vga_display(
    input             vga_clk,                  //VGA驱动时钟
    input             sys_rst_n,                //复位信号
    
    input      [ 9:0] pixel_xpos,               //像素点横坐标
    input      [ 9:0] pixel_ypos,               //像素点纵坐标    
    output reg [15:0] pixel_data                //像素点数据,
    );    

//parameter define    
parameter  H_DISP = 10'd640;                    //分辨率——行
parameter  V_DISP = 10'd480;                    //分辨率——列

localparam POS_X  = 10'd288;                    //字符区域起始点横坐标
localparam POS_Y  = 10'd232;                    //字符区域起始点纵坐标
localparam WIDTH  = 10'd64;                     //字符区域宽度
localparam HEIGHT = 10'd16;                     //字符区域高度
localparam RED    = 16'b11111_000000_00000;     //字符颜色
localparam BLUE   = 16'b00000_000000_11111;     //字符区域背景色
localparam BLACK  = 16'b00000_000000_00000;     //屏幕背景色

//reg define
reg  [63:0] char[15:0];                         //字符数组

//wire define   
wire [ 9:0] x_cnt;
wire [ 9:0] y_cnt;

//*****************************************************
//**                    main code
//*****************************************************
assign x_cnt = pixel_xpos - POS_X;              //像素点相对于字符区域起始点水平坐标
assign y_cnt = pixel_ypos - POS_Y;              //像素点相对于字符区域起始点竖直坐标

//给字符数组赋值，显示汉字“正点原子”，汉字大小为16*16
always @(posedge vga_clk) begin
    char[0]  <= 64'h0000020000000000;
    char[1]  <= 64'h7FFC02003FFE7FF8;
    char[2]  <= 64'h0100020020800010;
    char[3]  <= 64'h010003FC21000020;
    char[4]  <= 64'h0100020027F00040;
    char[5]  <= 64'h0100020024100180;
    char[6]  <= 64'h11003FF024100100;
    char[7]  <= 64'h11F8201027F0FFFE;
    char[8]  <= 64'h1100201024100100;
    char[9]  <= 64'h1100201024100100;
    char[10] <= 64'h11003FF027F00100;    
    char[11] <= 64'h1100000020800100;
    char[12] <= 64'h1100248824900100;
    char[13] <= 64'h1100224448880100;
    char[14] <= 64'hFFFE424452840500;
    char[15] <= 64'h0000800481000200;
end

//给不同的区域绘制不同的颜色
always @(posedge vga_clk or negedge sys_rst_n) begin         
    if (!sys_rst_n) 
        pixel_data <= BLACK;
    else begin
        if((pixel_xpos >= POS_X) && (pixel_xpos < POS_X + WIDTH)
          && (pixel_ypos >= POS_Y) && (pixel_ypos < POS_Y + HEIGHT)) begin
            if(char[y_cnt][10'd63 - x_cnt])
                pixel_data <= RED;              //绘制字符为红色
            else
                pixel_data <= BLUE;             //绘制字符区域背景为蓝色      
        end
        else
            pixel_data <= BLACK;                //绘制屏幕背景为黑色
    end
end

endmodule 