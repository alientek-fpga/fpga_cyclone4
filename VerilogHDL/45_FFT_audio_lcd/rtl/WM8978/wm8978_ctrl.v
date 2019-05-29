//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           wm8978_ctrl
// Last modified Date:  2018/05/24 16:20:57
// Last Version:        V1.0
// Descriptions:        WM8978控制模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/05/24 16:21:23
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module wm8978_ctrl(
    //system clock
    input                clk        ,        // 时钟信号
    input                rst_n      ,        // 复位信号

    //wm8978 interface
    //audio interface(master mode)
    input                aud_bclk   ,        // WM8978位时钟
    input                aud_lrc    ,        // 对齐信号
    input                aud_adcdat ,        // 音频输入
    output               aud_dacdat ,        // 音频输出
    //control interface       
    output               aud_scl    ,        // WM8978的SCL信号
    inout                aud_sda    ,        // WM8978的SDA信号

    //user interface
    input      [31:0]    dac_data   ,        // 输出的音频数据
    output     [31:0]    adc_data   ,        // 录音的数据
    output               rx_done    ,        // 一次采集完成
    output               tx_done             // 一次发送完成
);

//parameter define
parameter    WL = 6'd16;                     // word length音频字长定义

//*****************************************************
//**                    main code
//*****************************************************

//例化wm8978_config,配置WM8978的寄存器
wm8978_config #(.WL(WL)) u_wm8978_config(
    //system clock
    .clk       (clk      ),         // 时钟信号
    .rst_n     (rst_n    ),         // 复位信号
    //wm8978 interface
    .aud_scl   (aud_scl  ),         // WM8978的SCL时钟
    .aud_sda   (aud_sda  )          // WM8978的SDA信号
    //user interface
);

//例化audio_receive，FPGA接收WM8978的音频数据
audio_receive #(.WL(WL)) u_audio_receive(
    //system reset
    .rst_n     (rst_n   ),          // 复位信号
    //wm8978 interface
    .aud_bclk  (aud_bclk),          // WM8978位时钟
    .aud_lrc   (aud_lrc ),          // 对齐信号
    .aud_adcdat(aud_adcdat),        // 音频输入
    //user interface
    .rx_done   (rx_done ),          // FPGA接收数据完成
    .adc_data  (adc_data)           // FPGA接收的数据
);

//例化audio_send，FPGA向WM8978传送音频数据
audio_send #(.WL(WL)) u_audio_send(
    //system reset
    .rst_n     (rst_n     ),        // 复位信号
    //wm8978 interface
    .aud_bclk  (aud_bclk  ),        // WM8978位时钟
    .aud_lrc   (aud_lrc   ),        // 对齐信号
    .aud_dacdat(aud_dacdat),        // 音频数据输出
    //user interface
    .dac_data  (dac_data  ),        // 预输出的音频数据
    .tx_done   (tx_done   )         // 发送完成信号
);

endmodule