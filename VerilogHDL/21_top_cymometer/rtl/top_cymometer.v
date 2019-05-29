//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           top_cymometer
// Last modified Date:  2018/4/10 16:49:10
// Last Version:        V1.0
// Descriptions:        等精度频率计模块，测量被测信号频率
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/4/10 16:49:08
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module top_cymometer(
    //system clock
    input                  sys_clk  ,    // 时钟信号
    input                  sys_rst_n,    // 复位信号

    //cymometer interface
    input                  clk_fx   ,    // 被测时钟
    output                 clk_out  ,    // 输出时钟
    //user interface
    output          [5:0]  sel      ,    // 数码管位选
    output          [7:0]  seg_led       // 数码管段选
);

//parameter define
parameter    CLK_FS = 26'd50000000;      // 基准时钟频率值

//wire define
wire    [19:0]       data_fx;            // 被测信号测量值

//*****************************************************
//**                    main code
//*****************************************************

//例化等精度频率计模块
cymometer #(.CLK_FS(CLK_FS)              // 基准时钟频率值
) u_cymometer(
    //system clock
    .clk_fs      (sys_clk  ),            // 基准时钟信号
    .rst_n       (sys_rst_n),            // 复位信号
    //cymometer interface
    .clk_fx      (clk_fx   ),            // 被测时钟信号
    .data_fx     (data_fx  )             // 被测时钟频率输出
);
    
//例化测试时钟模块，产生测试时钟
clk_test #(.DIV_N(7'd100)                // 分频系数
) u_clk_test(
    //源时钟
    .clk_in      (sys_clk  ),            // 输入时钟
    .rst_n       (sys_rst_n),            // 复位信号
    //分频后的时钟
    .clk_out     (clk_out  )             // 测试时钟
);

//例化数码管显示模块
seg_led u_seg_led(
    //module clock
    .clk         (sys_clk  ),            // 数码管驱动模块的驱动时钟
    .rst_n       (sys_rst_n),            // 复位信号
    //seg_led interface
    .seg_sel     (sel      ),            // 数码管位选
    .seg_led     (seg_led  ),            // 数码管段选
    //user interface
    .data        (data_fx  ),            // 被测频率值
    .point       (6'd0     ),            // 数码管显示的点控制
    .en          (1'b1     ),            // 数码管驱动使能信号
    .sign        (1'b0     )             // 控制符号位显示
);

endmodule