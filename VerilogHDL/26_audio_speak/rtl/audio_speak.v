//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           audio_speak
// Last modified Date:  2018/3/22 16:16:07
// Last Version:        V1.0
// Descriptions:        音频收发(喇叭默认开启)
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/22 16:16:05
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module audio_speak(
    input           sys_clk   ,               // 系统时钟(50MHz)
    input           sys_rst_n ,               // 系统复位

    //wm8978 audio interface (master mode)
    input           aud_bclk  ,               // WM8978位时钟
    input           aud_lrc   ,               // 对齐信号
    input           aud_adcdat,               // 音频输入
    output          aud_mclk  ,               // WM8978的主时钟
    output          aud_dacdat,               // 音频输出
    
    //wm8978 control interface
    output          aud_scl   ,               // WM8978的SCL信号
    inout           aud_sda                   // WM8978的SDA信号
);

//wire define
wire [31:0] adc_data;                         // FPGA采集的音频数据

//*****************************************************
//**                    main code
//*****************************************************

//例化PLL，生成WM8978主时钟
pll_clk u_pll_clk(
    .areset             (~sys_rst_n),         // pll_clk异步复位信号
    .inclk0             (sys_clk   ),         // 输入sys_clk = 50 MHZ
    .c0                 (aud_mclk  )          // WM8978的MCLK信号（12MHz)
);

//例化WM89878控制模块
wm8978_ctrl u_wm8978_ctrl(
    .clk                (sys_clk    ),        // 时钟信号
    .rst_n              (sys_rst_n  ),        // 复位信号

    .aud_bclk           (aud_bclk   ),        // WM8978位时钟
    .aud_lrc            (aud_lrc    ),        // 对齐信号
    .aud_adcdat         (aud_adcdat ),        // 音频输入
    .aud_dacdat         (aud_dacdat ),        // 音频输出
    
    .aud_scl            (aud_scl    ),        // WM8978的SCL信号
    .aud_sda            (aud_sda    ),        // WM8978的SDA信号
    
    .adc_data           (adc_data   ),        // 输入的音频数据
    .dac_data           (adc_data   ),        // 输出的音频数据
    .rx_done            (),                   // 一次接收完成
    .tx_done            ()                    // 一次发送完成
);

endmodule 