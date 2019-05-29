//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           ip_fifo
// Last modified Date:  2018/07/06 11:31:26
// Last Version:        V1.0
// Descriptions:        FIFO实验顶层模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/07/06 11:31:51
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module ip_fifo(
    input    sys_clk    ,         // 时钟信号
    input    sys_rst_n            // 复位信号
);

//wire define
wire            wrreq   ;         // 写请求信号
wire    [7:0]   data    ;         // 写入FIFO的数据
wire            wrempty ;         // 写侧空信号
wire            wrfull  ;         // 写侧满信号
wire            wrusedw ;         // 写侧FIFO中的数据量

wire            rdreq   ;         // 读请求信号
wire    [7:0]   q       ;         // 从FIFO输出的数据
wire            rdempty ;         // 读侧空信号
wire            rdfull  ;         // 读侧满信号
wire            rdusedw ;         // 读侧FIFO中的数据量
//*****************************************************
//**                    main code
//*****************************************************

//例化FIFO模块
fifo u_fifo(
    .wrclk   ( sys_clk ),         // 写时钟
    .wrreq   ( wrreq   ),         // 写请求
    .data    ( data    ),         // 写入FIFO的数据
    .wrempty ( wrempty ),         // 写空信号
    .wrfull  ( wrfull  ),         // 写满信号
    .wrusedw ( wrusedw ),         // 写侧数据量
    
    .rdclk   ( sys_clk ),         // 读时钟
    .rdreq   ( rdreq   ),         // 读请求
    .q       ( q       ),         // 从FIFO输出的数据
    .rdempty ( rdempty ),         // 读空信号
    .rdfull  ( rdfull  ),         // 读满信号
    .rdusedw ( rdusedw )          // 读侧数据量
);

//例化写FIFO模块
fifo_wr u_fifo_wr(
    .clk     (sys_clk ),          // 写时钟
    .rst_n   (sys_rst_n),         // 复位信号

    .wrreq   (wrreq   ),          // 写请求
    .data    (data    ),          // 写入FIFO的数据
    .wrempty (wrempty ),          // 写空信号
    .wrfull  (wrfull  )           // 写满信号
);

//例化读FIFO模块
fifo_rd u_fifo_rd(
    .clk     (sys_clk ),          // 读时钟
    .rst_n   (sys_rst_n),         // 复位信号

    .rdreq   (rdreq   ),          // 读请求
    .data    (q       ),          // 从FIFO输出的数据
    .rdempty (rdempty ),          // 读空信号
    .rdfull  (rdfull  )           // 读满信号
);

endmodule 