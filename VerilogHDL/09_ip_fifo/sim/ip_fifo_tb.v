//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           ip_fifo_tb
// Last modified Date:  2018/07/08 8:35:05
// Last Version:        V1.0
// Descriptions:        FIFO测试文件
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/07/08 8:35:38
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

`timescale 1 ns/ 1 ns

module ip_fifo_tb;

//parameter define
parameter   PERIOD = 20;        //定义系统时钟周期

//reg define
reg sys_clk;
reg sys_rst_n;

//初始化
initial begin
    sys_clk <= 1'b0;
    sys_rst_n <= 1'b0;
    #(20*PERIOD + 1)
    sys_rst_n <= 1'b1;
end

always #(PERIOD) sys_clk = ~sys_clk;

ip_fifo u1_ip_fifo(
	.sys_clk   (sys_clk),
	.sys_rst_n (sys_rst_n)
);

endmodule