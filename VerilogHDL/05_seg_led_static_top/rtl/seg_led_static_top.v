//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           seg_led_static_top
// Last modified Date:  2018/3/9 14:21:12
// Last Version:        V1.0
// Descriptions:        数码管静态显示实验顶层文件
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/9 14:21:04
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module seg_led_static_top (
    input               sys_clk  ,       // 系统时钟
    input               sys_rst_n,       // 系统复位信号（低有效）

    output    [5:0]     sel      ,       // 数码管位选
    output    [7:0]     seg_led          // 数码管段选

);

//parameter define
parameter  TIME_SHOW = 25'd25000_000;    // 数码管变化的时间间隔0.5s

//wire define
wire       add_flag;                     // 数码管变化的通知信号

//*****************************************************
//**                    main code
//*****************************************************

//每隔0.5s产生一个时钟周期的脉冲信号
time_count #(
    .MAX_NUM    (TIME_SHOW)
) u_time_count(
    .clk        (sys_clk  ),
    .rst_n      (sys_rst_n),
    
    .flag       (add_flag )
);

//每当脉冲信号到达时，使数码管显示的数值加1
seg_led_static u_seg_led_static (
    .clk        (sys_clk  ), 
    .rst_n      (sys_rst_n),

    .add_flag   (add_flag ), 
    .sel        (sel      ),
    .seg_led    (seg_led  )
);

endmodule 