//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved	                               
//----------------------------------------------------------------------------------------
// File name:           led_ctrl
// Last modified Date:  2018/4/24 9:56:36
// Last Version:        V1.1
// Descriptions:        led灯控制模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/29 10:55:56
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
// Modified by:		    正点原子
// Modified date:	    2018/4/24 9:56:36
// Version:			    V1.1
// Descriptions:	    led灯控制模块
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module led_ctrl(
    input            sys_clk,          //外部50M时钟
    input            sys_rst_n,        //外部复位信号，低有效
    
    input            led_en,           //led控制使能
    input      [3:0] led_data,         //led控制数据
    
    output reg [3:0] led               //led灯
    );

//reg define
reg led_en_d0;
reg led_en_d1;

//wire define
wire led_en_flag;

//*****************************************************
//**                    main code
//*****************************************************
//捕获led_en上升沿，得到一个时钟周期的脉冲信号
assign led_en_flag = (~led_en_d1) & led_en_d0;

always @(posedge sys_clk or negedge sys_rst_n) begin 
    if (!sys_rst_n) begin 
        led_en_d0 <= 1'b0;
        led_en_d1 <= 1'b0;
    end
    else begin
        led_en_d0 <= led_en;
        led_en_d1 <= led_en_d0;
    end
end

always @(posedge sys_clk or negedge sys_rst_n) begin 
    if (!sys_rst_n) 
        led <= 4'b0000;
    else if(led_en_flag)               //在led_en上升沿到来时，改变led灯的状态
            led <= ~led_data;          //按键按下时为低电平，而led高电平时点亮
        else
            led <= led;
end
    
endmodule 