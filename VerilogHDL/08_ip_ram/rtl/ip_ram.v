//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           ip_ram
// Last modified Date:  2018/3/18 8:41:06
// Last Version:        V1.0
// Descriptions:        IP核之RAM实验
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/18 8:41:06
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module ip_ram(
    input               sys_clk        ,  //系统时钟
    input               sys_rst_n         //系统复位，低电平有效
    );

//wire define
wire             ram_wr_en   ;  //ram写使能  
wire             ram_rd_en   ;  //ram读使能  
wire    [4:0]    ram_addr    ;  //ram读写地址 
wire    [7:0]    ram_wr_data ;  //ram写数据  

wire    [7:0]    ram_rd_data ;  //ram读数据  

//*****************************************************
//**                    main code
//*****************************************************

//ram读写模块
ram_rw  u_ram_rw(
    .clk            (sys_clk),
    .rst_n          (sys_rst_n),

    .ram_wr_en      (ram_wr_en  ),
    .ram_rd_en      (ram_rd_en  ),
    .ram_addr       (ram_addr   ),
    .ram_wr_data    (ram_wr_data),

    .ram_rd_data    (ram_rd_data)
    );

//ram ip核
ram_1port  u_ram_1port(
    .address      (ram_addr),
    .clock        (sys_clk),
    .data         (ram_wr_data),
    .rden         (ram_rd_en),
    .wren         (ram_wr_en),
    .q            (ram_rd_data)
    );

endmodule