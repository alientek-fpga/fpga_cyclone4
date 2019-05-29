//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved	                               
//----------------------------------------------------------------------------------------
// File name:          tb_top_key_beep
// Last modified Date:  2018年5月7日14:33:28
// Last Version:        V1.1
// Descriptions:        按键消抖
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018年5月7日14:33:33
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
// Modified by:		    正点原子
// Modified date:	    2018/4/24 9:56:36
// Version:			    V1.1
// Descriptions:	    按键控制蜂鸣器测试模块
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//
`timescale 1 ns/ 1 ns
module tb_top_key_beep();

//parameter define
parameter T = 20;

//reg define
reg  key;
reg  sys_clk;
reg  sys_rst_n;
reg  key_value;

// wire define                                               
wire beep;

//*****************************************************
//**                    main code                  
//*****************************************************

//给信号初始值
initial begin
    key                          <= 1'b1;
    sys_clk                      <= 1'b0;
    sys_rst_n                    <= 1'b0; 
    #20           sys_rst_n      <= 1'b1;  //在第20ns的时候复位信号信号拉高 
    #30           key            <= 1'b0;  //在第50ns的时候按下按键
    #20           key            <= 1'b1;  //模拟抖动
    #20           key            <= 1'b0;  //模拟抖动
    #20           key            <= 1'b1;  //模拟抖动
    #20           key            <= 1'b0;  //模拟抖动
    #170          key            <= 1'b1;  //在第300ns的时候松开按键
    #20           key            <= 1'b0;  //模拟抖动
    #20           key            <= 1'b1;  //模拟抖动
    #20           key            <= 1'b0;  //模拟抖动
    #20           key            <= 1'b1;  //模拟抖动
    #170          key            <= 1'b0;  //在第550ns的时候再次按下按键
    #20           key            <= 1'b1;  //模拟抖动
    #20           key            <= 1'b0;  //模拟抖动
    #20           key            <= 1'b1;  //模拟抖动
    #20           key            <= 1'b0;  //模拟抖动
    #170          key            <= 1'b1;  //在第800ns的时候松开按键
    #20           key            <= 1'b0;  //模拟抖动
    #20           key            <= 1'b1;  //模拟抖动
    #20           key            <= 1'b0;  //模拟抖动
    #20           key            <= 1'b1;  //模拟抖动
end

//50Mhz的时钟，周期则为1/50Mhz=20ns,所以每10ns，电平取反一次  
 always # (T/2) sys_clk <= ~sys_clk;

//例化key_beep模块                        
top_key_beep u1 (
	.beep(beep),
	.key(key),
	.sys_clk(sys_clk),
	.sys_rst_n(sys_rst_n)
);           
                                       
endmodule
