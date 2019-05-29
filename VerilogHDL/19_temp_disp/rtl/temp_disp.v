//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           temp_disp
// Last modified Date:  2018-03-30 14:45:44
// Last Version:        V1.0
// Descriptions:        温度传感器显示
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018-03-30 14:46:40
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module temp_disp(
    input            sys_clk     ,    //输入的系统时钟
    input            sys_rst_n   ,    //输入的复位信号
    inout            dq          ,    //ds18b20温度传感器单总线
    output  [5:0]    sel         ,    //输出数码管位选信号
    output  [7:0]    seg_led          //输出数码管段选信号
);

//parameter define
parameter POINT = 6'b000100;          // 数码管小数点的位置

//wire define
wire    [19:0]  temp_data;            // 温度数值
wire            sign;                 // 符号位

//*****************************************************
//**                    main code
//*****************************************************

//例化动态数码管驱动模块
seg_led u_seg_led(
    //module clock
    .clk           (sys_clk  ),       // 时钟信号
    .rst_n         (sys_rst_n),       // 复位信号
    //seg_led interface
    .seg_sel       (sel      ),       // 位选
    .seg_led       (seg_led  ),       // 段选
    //user interface
    .data          (temp_data),       // 显示的数值
    .point         (POINT    ),       // 小数点具体显示的位置,从高到低,高电平有效
    .en            (1'b1     ),       // 数码管使能信号
    .sign          (sign     )        // 符号位（高电平显示“-”号）
);

//例化DS18B20驱动模块
ds18b20_dri u1_ds18b20_dri(
    //module clock
    .clk          (sys_clk  ),        // 时钟信号（50MHz）
    .rst_n        (sys_rst_n),        // 复位信号
    //user interface
    .dq           (dq       ),        // DS18B20的DQ引脚数据
    .temp_data    (temp_data),        // 转换后得到的温度值
    .sign         (sign     )         // 符号位
);

endmodule