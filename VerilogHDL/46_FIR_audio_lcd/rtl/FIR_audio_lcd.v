//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           FIR_audio_lcd
// Last modified Date:  2018/11/27 13:58:23
// Last Version:        V1.0
// Descriptions:        FIR滤波器顶层模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/11/27 13:58:23
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module FIR_audio_lcd(
    input           sys_clk,
    input           rst_n,
                    
    // WM8978接口
    output          aud_mclk,       // WM8978接口
    input           aud_bclk,               
    input           aud_lrc,               
    input           aud_adcdat,               
    output          aud_dacdat,               
    output          aud_scl,               
    inout           aud_sda,
    //LCD接口
    output          lcd_hs      ,  //LCD 行同步信号
    output          lcd_vs      ,  //LCD 场同步信号
    output          lcd_de      ,  //LCD 数据输入使能
    output [15:0]   lcd_rgb     ,  //LCD RGB565颜色数据
    output          lcd_bl      ,  //LCD 背光控制信号
    output          lcd_rst     ,  //LCD 复位信号
    output          lcd_pclk    ,  //LCD 采样时钟  
    
    input           key0
    );

//wire define
wire        clk50M;
wire        clk10M;

wire        audio_valid;      
wire [15:0] audio_data;

wire        fft_sop;
wire        fft_eop;
wire        fft_valid;
wire [15:0] fft_data;

wire [15:0] audio_data_out;  
wire [33:0] fir_odata_w;
wire        fir_dvalid_w;

//*****************************************************
//**                    main code
//***************************************************** 

//KEY0：按下时显示原始音频频谱，释放后显示滤波后频谱
assign audio_data_out = key0 ? fir_odata_w[33:18]:audio_data;

//锁相环模块
pll pll_inst (
    .inclk0             (sys_clk),
    
    .c0                 (aud_mclk),
    .c1                 (clk50M),
    .c2                 (clk10M)
    );

//例化WM8978控制模块
wm8978_ctrl u_wm8978_ctrl(
    .clk                (clk50M),
    .rst_n              (rst_n),

    .aud_bclk           (aud_bclk),         // WM8978位时钟
    .aud_lrc            (aud_lrc),          // 对齐信号
    .aud_adcdat         (aud_adcdat),       // 音频输入
    .aud_dacdat         (aud_dacdat),       // 音频输出
        
    .aud_scl            (aud_scl),          // WM8978的SCL信号
    .aud_sda            (aud_sda),          // WM8978的SDA信号

    .dac_data           (audio_data_out),   // 输出的音频数据
    .adc_data           (audio_data),       // 输入的音频数据
    .rx_done            (audio_valid),      // 一次接收完成
    .tx_done            ()                  // 一次发送完成
    );
      
//利用IP核实现的FIR低通滤波器   
fir_lowpass u_fir_lowpass (
    .clk                (aud_bclk),
    .reset_n            (rst_n),
    
    .ast_sink_data      (audio_data),
    .ast_sink_valid     (audio_valid),
    .ast_sink_error     (),
    .ast_sink_ready     (),
    
    .ast_source_ready   (1'b1),
    .ast_source_data    (fir_odata_w),
    .ast_source_valid   (fir_dvalid_w),
    .ast_source_error   (),
    );  
                   
//利用ip核实现的FFT
FFT_top FFT_u(
    .clk_50m            (clk50M),
    .rst_n              (rst_n),
        
    .audio_clk          (aud_bclk),
    .audio_valid        (fir_dvalid_w),
    .audio_data         (audio_data_out),
        
    .data_modulus       (fft_data),
    .data_sop           (fft_sop),
    .data_eop           (fft_eop),
    .data_valid         (fft_valid)
    );
                    
//RGB_LCD 显示模块
LCD_top LCD_u(
    .clk50M             (clk50M),
    .clk10M             (clk10M),
    .rst_n              (rst_n),
        
    .lcd_hs             (lcd_hs),
    .lcd_vs             (lcd_vs),
    .lcd_de             (lcd_de),
    .lcd_rgb            (lcd_rgb),
    .lcd_bl             (lcd_bl),
    .lcd_rst            (lcd_rst),
    .lcd_pclk           (lcd_pclk),
                            
    .fft_data           (fft_data),
    .fft_sop            (fft_sop),
    .fft_eop            (fft_eop),
    .fft_valid          (fft_valid)
    );
    
endmodule 