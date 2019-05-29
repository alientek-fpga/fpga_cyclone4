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
// Descriptions:        LCD顶层模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/21 13:58:23
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module lcd_rgb_top(
    input           lcd_clk,        //LCD驱动时钟
    input           sys_rst_n,      //复位信号
    //lcd接口                          
    output          lcd_hs,         //LCD 行同步信号
    output          lcd_vs,         //LCD 场同步信号
    output          lcd_de,         //LCD 数据输入使能
    output  [15:0]  lcd_rgb,        //LCD RGB565颜色数据
    output          lcd_bl,         //LCD 背光控制信号
    output          lcd_rst,        //LCD 复位信号
    output          lcd_pclk,       //LCD 采样时钟
    
    input   [15:0]  cmos_data,      //CMOS传感器像素点数据
    output          data_req        //请求像素点颜色数据输入
    );

//wire define
wire [15:0]  lcd_data_w  ;          //像素点数据
wire         data_req_w  ;          //请求像素点颜色数据输入 
wire [ 9:0]  pixel_xpos_w;          //像素点横坐标
wire [ 9:0]  pixel_ypos_w;          //像素点纵坐标    
    
//*****************************************************
//**                    main code
//***************************************************** 

lcd_driver u_lcd_driver(            //lcd驱动模块
    .lcd_clk        (lcd_clk),    
    .sys_rst_n      (sys_rst_n),    

    .lcd_hs         (lcd_hs),       
    .lcd_vs         (lcd_vs),       
    .lcd_de         (lcd_de),       
    .lcd_rgb        (lcd_rgb),
    .lcd_bl         (lcd_bl),
    .lcd_rst        (lcd_rst),
    .lcd_pclk       (lcd_pclk),
    
    .pixel_data     (lcd_data_w), 
    .data_req       (),
    .pixel_xpos     (pixel_xpos_w), 
    .pixel_ypos     (pixel_ypos_w)
    ); 
    
lcd_display u_lcd_display(          //lcd显示模块
    .lcd_clk        (lcd_clk),    
    .sys_rst_n      (sys_rst_n),
    
    .pixel_xpos     (pixel_xpos_w),
    .pixel_ypos     (pixel_ypos_w),
    .cmos_data      (cmos_data),
    .lcd_data       (lcd_data_w),    
    .data_req       (data_req)
    );   
    
endmodule 