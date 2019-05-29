//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           lcd_rgb_top
// Last modified Date:  2018/3/21 13:58:23
// Last Version:        V1.0
// Descriptions:        LCD显示模块
//                      LCD分辨率800*480,CMOS分辨率600*480,将CMOS像素数据在LCD中间位置显示
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/21 13:58:23
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module lcd_display(
    input             lcd_clk,                  //lcd驱动时钟
    input             sys_rst_n,                //复位信号
    
    input      [10:0] pixel_xpos,               //像素点横坐标
    input      [10:0] pixel_ypos,               //像素点纵坐标   
    input      [15:0] cmos_data,                //CMOS传感器像素点数据
    output     [15:0] lcd_data,                 //LCD像素点数据
    output            data_req                  //请求像素点颜色数据输入
    );    

//parameter define  
parameter  H_LCD_DISP = 11'd800;                //LCD分辨率——行
parameter  H_CMOS_DISP = 11'd640;               //CMOS分辨率——行

localparam BLACK  = 16'b00000_000000_00000;     //RGB565 黑色

//reg define   
reg             data_val            ;           //数据有效信号

//wire define
wire    [10:0]  display_border_pos_l;           //左侧边界的横坐标
wire    [10:0]  display_border_pos_r;           //右侧边界的横坐标

//*****************************************************
//**                    main code
//*****************************************************

//左侧边界的横坐标计算 (800-640)/2-1 = 79
assign display_border_pos_l  = (H_LCD_DISP - H_CMOS_DISP)/2-1;

//右侧边界的横坐标计算 640 + (800-640)/2-1 = 719
assign display_border_pos_r = H_CMOS_DISP + (H_LCD_DISP - H_CMOS_DISP)/2-1;

//请求像素点颜色数据输入 范围:79~718，共640个时钟周期
assign data_req = ((pixel_xpos >= display_border_pos_l) &&
                  (pixel_xpos < display_border_pos_r)) ? 1'b1 : 1'b0;

//在数据有效范围内，将摄像头采集的数据赋值给LCD像素点数据
assign lcd_data = data_val ? cmos_data : BLACK;

//有效数据滞后于请求信号一个时钟周期,所以数据有效信号在此延时一拍
always @(posedge lcd_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        data_val <= 1'b0;
    else
        data_val <= data_req;    
end    

endmodule