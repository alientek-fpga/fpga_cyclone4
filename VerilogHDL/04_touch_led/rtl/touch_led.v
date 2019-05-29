//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved	                               
//----------------------------------------------------------------------------------------
// File name:           touch_led
// Last modified Date:  2018年5月8日21:00:26
// Last Version:        v1.0
// Descriptions:        触摸板控制led灯
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018年5月8日21:00:38
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
// Modified by:		    正点原子
// Modified date:	    
// Version:			    
// Descriptions:	    
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module touch_led(
    //input
    input        sys_clk,      //时钟信号50Mhz
    input        sys_rst_n,    //复位信号
    input        touch_key,    //触摸按键 
 
    //output
    output  reg  led           //LED灯

);

//reg define
reg    touch_key_d0;
reg    touch_key_d1;
reg    switch;

//wire define
wire   touch_en;

//根据按键信号的上升沿判断按下了按键
assign  touch_en = (~touch_key_d1) & touch_key_d0;
always @ (posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        touch_key_d0 <= 1'b0;
        touch_key_d1 <= 1'b0;
    end
    else begin
        touch_key_d0 <= touch_key;
        touch_key_d1 <= touch_key_d0;
    end 
end

//对触摸按键端口接收的数据延迟两个周期
always @ (posedge sys_clk or negedge sys_rst_n) begin
    if (sys_rst_n == 1'b0)
        switch <= 1'b0;
    else begin
        if (touch_en)
            switch <= ~switch;
        else 
            switch <= switch;
    end
end

//根据上升沿使能信号切换led状态
always @ (posedge sys_clk or negedge sys_rst_n) begin
    if (sys_rst_n == 1'b0)
        led <= 1'b1;
    else begin 
        if (switch)
            led <= 1'b0;
        else
            led <= 1'b1;
    end
end

endmodule