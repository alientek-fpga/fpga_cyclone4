//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved	                               
//----------------------------------------------------------------------------------------
// File name:           top_dht11
// Last modified Date:  2018年5月24日09:43:39
// Last Version:        V1.0
// Descriptions:        温湿度数码管显示实验
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018年5月24日09:43:44
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

module top_dht11(
    input          sys_clk  ,  //系统时钟 
    input          sys_rst_n,  //系统复位
    
    inout          dht11    ,  //DHT11总线
    input          key      ,  //按键
    output  [5:0]  sel      ,  //数码管位选信号
    output  [7:0]  seg_led     //数码管段选信号
);
//wire define
wire  [31:0]  data_valid;
wire  [19:0]  data      ;
wire  [5:0]   point     ;

//*****************************************************
//**                    main code
//*****************************************************

//dht11驱动模块
dht11_drive u_dht11_drive (
    .sys_clk        (sys_clk),
    .rst_n          (sys_rst_n),
    
    .dht11          (dht11),
    .data_valid     (data_valid)
    );


//按键消抖模块
key_debounce u_key_debounce(
    .sys_clk        (sys_clk),
    .sys_rst_n      (sys_rst_n),
    
    .key            (key),
    .key_flag       (key_flag),
    .key_value      (key_value)
    );

//按键控制温/湿度显示
dht11_key u_dht11_key(
    .sys_clk        (sys_clk),
    .sys_rst_n      (sys_rst_n),
    
    .key_flag       (key_flag),
    .key_value      (key_value),
    .data_valid     (data_valid),
    
    .data           (data),
    .sign           (sign),
    .en             (en),                     
    .point          (point)
    );

//动态数码管显示模块
seg_led u_seg_led (
    .clk            (sys_clk),
    .rst_n          (sys_rst_n),
    
    .seg_sel        (sel),
    .seg_led        (seg_led),
    
    .data           (data),
    .point          (point),
    .en             (en),
    .sign           (sign)
    );

endmodule 