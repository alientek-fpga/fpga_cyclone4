//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           flow_led
// Last modified Date:  2018/7/11 11:12:36
// Last Version:        V1.1
// Descriptions:        流水灯
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/1/29 10:55:56
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module flow_led(
    input               sys_clk  ,  //系统时钟
    input               sys_rst_n,  //系统复位，低电平有效
	 
    output  reg  [3:0]  led         //4个LED灯
    );

//reg define
reg [23:0] counter;

//*****************************************************
//**                    main code
//***************************************************** 
                                                                                                                                                                                                                         
//计数器对系统时钟计数，计时0.2秒
always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n)
        counter <= 24'd0;
    else if (counter < 24'd1000_0000)
        counter <= counter + 1'b1;
    else
        counter <= 24'd0;
end

//通过移位寄存器控制IO口的高低电平，从而改变LED的显示状态
always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n)
        led <= 4'b0001;
    else if(counter == 24'd1000_0000) 
        led[3:0] <= {led[2:0],led[3]};
    else
        led <= led;
end

endmodule 