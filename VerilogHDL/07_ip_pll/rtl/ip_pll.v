//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           ip_pll
// Last modified Date:  2018/3/18 8:41:06
// Last Version:        V1.0
// Descriptions:        IP核之PLL实验
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/18 8:41:06
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module ip_pll(
    input               sys_clk        ,  //系统时钟
    input               sys_rst_n      ,  //系统复位，低电平有效
    //输出时钟
    output              clk_100m       ,  //100Mhz时钟频率
    output              clk_100m_180deg,  //100Mhz时钟频率,相位偏移180度
    output              clk_50m        ,  //50Mhz时钟频率
    output              clk_25m           //25Mhz时钟频率
    );

//wire define
wire             rst_n          ;  //复位信号
wire             locked         ;  //locked信号拉高,锁相环开始稳定输出时钟

//*****************************************************
//**                    main code
//*****************************************************

//系统复位与锁相环locked相与,作为其它模块的复位信号
assign  rst_n = sys_rst_n & locked;

//锁相环
pll_clk u_pll_clk(
    .areset       (~sys_rst_n     ),  //锁相环高电平复位,所以复位信号取反
    .inclk0       (sys_clk        ),
    .c0           (clk_100m       ),
    .c1           (clk_100m_180deg),
    .c2           (clk_50m        ),
    .c3           (clk_25m        ),
    .locked       (locked         )
    ); 

endmodule