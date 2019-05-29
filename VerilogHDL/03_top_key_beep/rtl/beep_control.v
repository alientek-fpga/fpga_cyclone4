//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved	                               
//----------------------------------------------------------------------------------------
// File name:           beep_control
// Last modified Date:  2018/5/7 9:56:36
// Last Version:        V1.1
// Descriptions:        按键消抖
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/4/29 10:55:56
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
// Modified by:		    正点原子
// Modified date:	    2018/4/24 9:56:36
// Version:			    V1.1
// Descriptions:	    按键控制蜂鸣器
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//
module beep_control(
      //input
      input        sys_clk,     //系统时钟
      input        sys_rst_n,   //复位信号，低电平有效
      
      input        key_flag,    //按键有效信号
      input        key_value,	//消抖后的按键信号	
      output  reg  beep         //蜂鸣器控制信号  
  );
  
//*****************************************************
//**                    main code
//*****************************************************
always @ (posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        beep <= 1'b1;
    else if(key_flag && (~key_value))  //判断按键是否有效按下
        beep <= ~beep;        
end
    
endmodule 