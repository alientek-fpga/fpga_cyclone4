//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                                  
//----------------------------------------------------------------------------------------
// File name:           top_remote_rcv
// Last modified Date:  2018年5月28日16:42:06
// Last Version:        V1.0
// Descriptions:        红外数码管显示实验
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018年5月28日16:42:13
// Version:             V1.0
// Descriptions:        The original version
//----------------------------------------------------------------------------------------
//****************************************************************************************// 

module top_remote_rcv(
    input             sys_clk  ,    //系统时钟 
    input             sys_rst_n,    //系统复位信号，低电平有效
    input             remote_in,    //红外接收信号
    output     [5:0]  sel      ,    //数码管位选信号
    output     [7:0]  seg_led  ,    //数码管段选信号
    output            led           //led灯
);

//wire define
wire  [7:0]   data       ;
wire          repeat_en  ;

//*****************************************************
//**                    main code
//*****************************************************

//数码管显示模块
seg_led u_seg_led(
    .clk            (sys_clk),   
    .rst_n          (sys_rst_n),
    .seg_sel        (sel),   
    .seg_led        (seg_led),
    .data           (data),           //红外数据
    .point          (6'd0),           //无小数点
    .en             (1'b1),           //使能数码管
    .sign           (1'b0)            //无符号显示
    );

//HS0038B驱动模块
remote_rcv u_remote_rcv(               
    .sys_clk        (sys_clk),  
    .sys_rst_n      (sys_rst_n),    
    .remote_in      (remote_in),
    .repeat_en      (repeat_en),                
    .data_en        (),
    .data           (data)
    );

led_ctrl  u_led_ctrl(
    .sys_clk       (sys_clk),
    .sys_rst_n     (sys_rst_n),
    .repeat_en     (repeat_en),
    .led           (led)
    );

endmodule