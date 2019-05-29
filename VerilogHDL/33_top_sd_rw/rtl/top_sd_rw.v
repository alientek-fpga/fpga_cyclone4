//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           top_sd_rw
// Last modified Date:  2018/3/18 8:41:06
// Last Version:        V1.0
// Descriptions:        SD卡读写测试
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/18 8:41:06
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module top_sd_rw(
    input               sys_clk     ,  //系统时钟
    input               sys_rst_n   ,  //系统复位，低电平有效
    
    //SD卡接口
    input               sd_miso     ,  //SD卡SPI串行输入数据信号
    output              sd_clk      ,  //SD卡SPI时钟信号
    output              sd_cs       ,  //SD卡SPI片选信号
    output              sd_mosi     ,  //SD卡SPI串行输出数据信号
    //LED
    output      [3:0]   led            //LED灯
    );

//wire define
wire             clk_ref        ;
wire             clk_ref_180deg ;
wire             rst_n          ;
wire             locked         ;

wire             wr_start_en    ;      //开始写SD卡数据信号
wire     [31:0]  wr_sec_addr    ;      //写数据扇区地址    
wire     [15:0]  wr_data        ;      //写数据            
wire             rd_start_en    ;      //开始写SD卡数据信号
wire     [31:0]  rd_sec_addr    ;      //读数据扇区地址    
wire             error_flag     ;      //SD卡读写错误的标志

wire             wr_busy        ;      //写数据忙信号
wire             wr_req         ;      //写数据请求信号
wire             rd_busy        ;      //读忙信号
wire             rd_val_en      ;      //数据读取有效使能信号
wire     [15:0]  rd_val_data    ;      //读数据
wire             sd_init_done   ;      //SD卡初始化完成信号

//*****************************************************
//**                    main code
//*****************************************************

assign  rst_n = sys_rst_n & locked;

//锁相环
pll_clk u_pll_clk(
    .areset       (1'b0         ),
    .inclk0       (sys_clk      ),
    .c0           (clk_ref       ),
    .c1           (clk_ref_180deg),
    .locked       (locked       )
    );

//产生SD卡测试数据  
data_gen u_data_gen(
    .clk             (clk_ref),
    .rst_n           (rst_n),
    .sd_init_done    (sd_init_done),
    .wr_busy         (wr_busy),
    .wr_req          (wr_req),
    .wr_start_en     (wr_start_en),
    .wr_sec_addr     (wr_sec_addr),
    .wr_data         (wr_data),
    .rd_val_en       (rd_val_en),
    .rd_val_data     (rd_val_data),
    .rd_start_en     (rd_start_en),
    .rd_sec_addr     (rd_sec_addr),
    .error_flag      (error_flag)
    );     

//SD卡顶层控制模块
sd_ctrl_top u_sd_ctrl_top(
    .clk_ref           (clk_ref),
    .clk_ref_180deg    (clk_ref_180deg),
    .rst_n             (rst_n),
    //SD卡接口
    .sd_miso           (sd_miso),
    .sd_clk            (sd_clk),
    .sd_cs             (sd_cs),
    .sd_mosi           (sd_mosi),
    //用户写SD卡接口
    .wr_start_en       (wr_start_en),
    .wr_sec_addr       (wr_sec_addr),
    .wr_data           (wr_data),
    .wr_busy           (wr_busy),
    .wr_req            (wr_req),
    //用户读SD卡接口
    .rd_start_en       (rd_start_en),
    .rd_sec_addr       (rd_sec_addr),
    .rd_busy           (rd_busy),
    .rd_val_en         (rd_val_en),
    .rd_val_data       (rd_val_data),    
    
    .sd_init_done      (sd_init_done)
    );

//led警示 
led_alarm #(
    .L_TIME      (25'd25_000_000)
    )  
   u_led_alarm(
    .clk            (clk_ref),
    .rst_n          (rst_n),
    .led            (led),
    .error_flag     (error_flag)
    );    

endmodule