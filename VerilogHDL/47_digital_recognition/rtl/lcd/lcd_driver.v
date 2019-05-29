//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           lcd_driver
// Last modified Date:  2018/11/2 11:12:36
// Last Version:        V1.1
// Descriptions:        RGB LCD驱动
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/1/29 10:55:56
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
// Modified by:         正点原子
// Modified date:       2018/1/30 11:12:36
// Version:             V1.1
// Descriptions:        RGB LCD驱动
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module lcd_driver(
    input              lcd_clk,      //lcd模块驱动时钟
    input              rst_n  ,      //复位信号
    //RGB LCD接口
    output             lcd_hs,       //LCD 行同步信号
    output             lcd_vs,       //LCD 场同步信号
    output             lcd_de,       //LCD 数据输入使能
    output             lcd_bl,       //LCD 背光控制信号
    output             lcd_rst,      //LCD 复位信号
    output             lcd_pclk,     //LCD 采样时钟
    output    [15:0]   lcd_rgb ,     //LCD RGB565颜色数据
    
    //user interface
    input     [15:0]   lcd_data  ,   //像素点数据
    output             data_req  ,   //请求像素点颜色数据输入
    output     [10:0]  pixel_xpos,   //像素点横坐标
    output     [10:0]  pixel_ypos    //像素点纵坐标
    );

`include "lcd_para.vh"

//reg define
reg  [10:0] cnt_h;
reg  [10:0] cnt_v;

//wire define
wire       lcd_en;

//*****************************************************
//**                    main code
//*****************************************************
assign lcd_bl   = 1'b1;           //RGB LCD显示模块背光控制信号
assign lcd_rst  = 1'b1;           //RGB LCD显示模块系统复位信号
assign lcd_pclk = lcd_clk;        //RGB LCD显示模块采样时钟

//RGB LCD 采用数据输入使能信号同步时，行场同步信号需要拉高
assign lcd_de  = lcd_en;          //LCD输入的颜色数据采用数据输入使能信号同步
assign lcd_hs  = cnt_h <= H_SYNC - 1'd1 ? 1'b0 : 1'b1;
assign lcd_vs  = cnt_v <= V_SYNC - 1'd1 ? 1'b0 : 1'b1;

//使能RGB565数据输出
assign lcd_en  = (((cnt_h >= H_SYNC+H_BACK) && (cnt_h < H_SYNC+H_BACK+H_DISP))
                 &&((cnt_v >= V_SYNC+V_BACK) && (cnt_v < V_SYNC+V_BACK+V_DISP)))
                 ?  1'b1 : 1'b0;

//请求像素点颜色数据输入
assign data_req = (((cnt_h >= H_SYNC+H_BACK-1'b1) && (cnt_h < H_SYNC+H_BACK+H_DISP-1'b1))
                  && ((cnt_v >= V_SYNC+V_BACK) && (cnt_v < V_SYNC+V_BACK+V_DISP)))
                  ?  1'b1 : 1'b0;

//RGB565数据输出 
assign lcd_rgb = lcd_en ? lcd_data : 16'h0;

//像素点坐标
assign pixel_xpos = data_req ? (cnt_h - (H_SYNC + H_BACK - 1'b1)) : pixel_xpos;
assign pixel_ypos = data_req ? (cnt_v - (V_SYNC + V_BACK - 1'b1)) : pixel_ypos;

//行计数器对像素时钟计数
always @(posedge lcd_clk or negedge rst_n) begin
    if (!rst_n)
        cnt_h <= 11'd0;
    else begin
        if(cnt_h < H_TOTAL - 1'b1)
            cnt_h <= cnt_h + 1'b1;
        else
            cnt_h <= 11'd0;
    end
end

//场计数器对行计数
always @(posedge lcd_clk or negedge rst_n) begin
    if (!rst_n)
        cnt_v <= 11'd0;
    else if(cnt_h == H_TOTAL - 1'b1) begin
        if(cnt_v < V_TOTAL - 1'b1)
            cnt_v <= cnt_v + 1'b1;
        else
            cnt_v <= 11'd0;
    end
end

endmodule