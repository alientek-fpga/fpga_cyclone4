//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved	                               
//----------------------------------------------------------------------------------------
// File name:           top_key_beep
// Last modified Date:  2018年5月7日14:31:09
// Last Version:        V1.1
// Descriptions:        按键消抖
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018年5月7日14:31:36
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
// Modified by:		    正点原子
// Modified date:	    2018/4/24 9:56:36
// Version:			    V1.1
// Descriptions:	    顶层模块
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//
  module top_key_beep(
      input        sys_clk,       //时钟信号50Mhz
      input        sys_rst_n,     //复位信号
      
      input        key,           //按键信号       
      output       beep           //蜂鸣器控制信号
      );
      
//wire define
wire key_value;
wire key_flag;

//*****************************************************
//**                    main code
//*****************************************************

//例化按键消抖模块
key_debounce u_key_debounce(
    .sys_clk        (sys_clk),
    .sys_rst_n      (sys_rst_n),
    
    .key            (key),
    .key_flag       (key_flag),
    .key_value      (key_value)
    );
  
//例化蜂鸣器控制模块
beep_control u_beep_control(
    .sys_clk        (sys_clk), 
    .sys_rst_n      (sys_rst_n),
    
    .key_flag       (key_flag),      
    .key_value      (key_value),
    .beep           (beep)
    );
    
endmodule 