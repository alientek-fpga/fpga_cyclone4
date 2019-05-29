//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           tb_ip_pll
// Last modified Date:  2018/3/18 8:41:06
// Last Version:        V1.0
// Descriptions:        
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/18 8:41:06
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//                                                               

`timescale  1ns/1ns

module        tb_ip_pll      ;

parameter     SYS_PERIOD = 20;  //定义系统时钟周期

reg           clk            ;
reg           rst_n          ;  

wire          clk_100m        ; 
wire          clk_100m_180deg ;
wire          clk_50m         ;
wire          clk_25m         ;

always #(SYS_PERIOD/2) clk <= ~clk ;

initial begin
            clk <= 1'b0 ;
            rst_n <= 1'b0 ;
          #(20*SYS_PERIOD)
            rst_n <= 1'b1 ;
          end

//例化ip_pll模块          
ip_pll    u_ip_pll(
    .sys_clk           (clk),
    .sys_rst_n         (rst_n),      
    .clk_100m          (clk_100m       ),
    .clk_100m_180deg   (clk_100m_180deg),
    .clk_50m           (clk_50m        ),
    .clk_25m           (clk_25m        )
    );          

endmodule         