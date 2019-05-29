//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           LCD_top
// Last modified Date:  2018/11/21 13:58:23
// Last Version:        V1.0
// Descriptions:        LCD顶层模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/11/21 13:58:23
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module LCD_top(
    input         clk50M,
    input         clk10M,
    input         rst_n,
    
    output        lcd_hs, 
    output        lcd_vs, 
    output        lcd_de, 
    output [15:0] lcd_rgb,
    output        lcd_bl, 
    output        lcd_rst,
    output        lcd_pclk,
                    
    input  [15:0] fft_data,
    input         fft_sop,
    input         fft_eop,
    input         fft_valid
    );

//wire define
wire [6:0]  line_cnt;
wire [15:0] line_length;
wire        data_req;   
wire        wr_over;

wire        fifo_wr_req;
wire        fifo_rd_req;
wire [15:0] fifo_wr_data;
wire        fifo_empty;

//*****************************************************
//**                    main code
//***************************************************** 

//fifo读写控制模块
fifo_ctrl u_fifo_ctrl(
    .clk_50m        (clk50M),
    .lcd_clk        (clk10M),
    .rst_n          (rst_n),
        
    .fft_data       (fft_data),
    .fft_sop        (fft_sop),
    .fft_eop        (fft_eop),
    .fft_valid      (fft_valid),
        
    .data_req       (data_req),
    .wr_over        (wr_over),
    .rd_cnt         (line_cnt),         //频谱的序号
        
    .fifo_wr_data   (fifo_wr_data),
    .fifo_wr_req    (fifo_wr_req),
    .fifo_rd_req    (fifo_rd_req)
);
  
//例化fifo
FFT_LCD_FIFO    FFT_LCD_FIFO_inst (
    .aclr           (~rst_n),
                                        //写端口
    .wrclk          (clk50M),
    .wrreq          (fifo_wr_req),
    .data           (fifo_wr_data),
                                        //读端口
    .rdclk          (clk10M),
    .rdreq          (fifo_rd_req),
    .q              (line_length),      //频谱的幅度
        
    .rdempty        (fifo_empty)
    );
 
//LCD驱动显示模块
lcd_rgb_top  u_lcd_rgb_top(
    .lcd_clk        (clk10M),
    .sys_rst_n      (rst_n &(~fifo_empty)),
    
    .lcd_hs         (lcd_hs),
    .lcd_vs         (lcd_vs),
    .lcd_de         (lcd_de),
    .lcd_rgb        (lcd_rgb),
    .lcd_bl         (lcd_bl),
    .lcd_rst        (lcd_rst),
    .lcd_pclk       (lcd_pclk),
        
    .line_cnt       (line_cnt),         //频谱的序号（0~63）
    .line_length    (line_length[15:3]),//频谱的幅度，缩小8倍以适应屏幕尺寸
    .data_req       (data_req),         //请求频谱数据输入
    .wr_over        (wr_over)           //”一条频谱绘制完成”标志信号
    );
      
endmodule 