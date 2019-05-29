//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                                  
//----------------------------------------------------------------------------------------
// File name:           key_led
// Last modified Date:  2018年5月11日14:46:18
// Last Version:        V1.1
// Descriptions:        按键控制LED
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
// Modified by:         正点原子
// Modified date:       2018/4/24 9:56:36
// Version:             V1.1
// Descriptions:        
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module key_led(
    input               sys_clk  ,    //50Mhz系统时钟
    input               sys_rst_n,    //系统复位，低有效
    input        [3:0]  key,          //按键输入信号
    output  reg  [3:0]  led           //LED输出信号
    );

//reg define     
reg  [23:0] cnt;
reg  [1:0]  led_control;

//用于计数0.2s的计数器
always @ (posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        cnt<=24'd9_999_999;
    else if(cnt<24'd9_999_999)
        cnt<=cnt+1;
    else
        cnt<=0;
end 

//用于led灯状态的选择
always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n)
        led_control <= 2'b00;
    else if(cnt == 24'd9_999_999) 
        led_control <= led_control + 1'b1;
    else
        led_control <= led_control;
end

//识别按键，切换显示模式
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n) begin
          led<=4'b 0000;
    end
    else if(key[0]== 0)  //按键1按下时，从右向左的流水灯效果
        case (led_control)
            2'b00   : led<=4'b1000;
            2'b01   : led<=4'b0100;
            2'b10   : led<=4'b0010;
            2'b11   : led<=4'b0001;
            default  : led<=4'b0000;
        endcase
    else if (key[1]==0)  //按键2按下时，从左向右的流水灯效果
        case (led_control)
            2'b00   : led<=4'b0001;
            2'b01   : led<=4'b0010;
            2'b10   : led<=4'b0100;
            2'b11   : led<=4'b1000;
            default  : led<=4'b0000;
        endcase
    else if (key[2]==0)  //按键3按下时，LED闪烁
        case (led_control)
            2'b00   : led<=4'b1111;
            2'b01   : led<=4'b0000;
            2'b10   : led<=4'b1111;
            2'b11   : led<=4'b0000;
            default  : led<=4'b0000;
        endcase
    else if (key[3]==0)  //按键4按下时，LED全亮
        led=4'b1111;
    else
        led<=4'b0000;    //无按键按下时，LED熄灭     
end

endmodule 