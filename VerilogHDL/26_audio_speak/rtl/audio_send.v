//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           audio_send
// Last modified Date:  2018/3/26 14:17:52
// Last Version:        V1.0
// Descriptions:        FPGA向WM8978传送音频数据
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/26 14:17:51
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module audio_send #(parameter WL = 6'd32) (    // WL(word length音频字长定义)
    //system reset
    input                  rst_n     ,         // 复位信号

    //wm8978 interface
    input                  aud_bclk  ,         // WM8978位时钟
    input                  aud_lrc   ,         // 对齐信号
    output   reg           aud_dacdat,         // 音频数据输出
    //user interface
    input         [31:0]   dac_data  ,         // 预输出的音频数据
    output   reg           tx_done             // 发送一次音频位数完成
);

//reg define
reg              aud_lrc_d0;                   // 延迟一个时钟周期
reg    [ 5:0]    tx_cnt;                       // 发送数据计数
reg    [31:0]    dac_data_t;                   // 预输出的音频数据的暂存值

//wire define
wire             lrc_edge;                     // 边沿信号

//*****************************************************
//**                    main code
//*****************************************************

assign  lrc_edge = aud_lrc ^ aud_lrc_d0;     // LRC信号的边沿检测

//为了在aud_lrc变化的第二个AUD_BCLK上升沿采集aud_adcdat,延迟打拍采集
always @(posedge aud_bclk or negedge rst_n) begin
    if(!rst_n)
        aud_lrc_d0 <= 1'b0;
    else
        aud_lrc_d0 <= aud_lrc;
end

//发送32位音频数据的计数
always @(posedge aud_bclk or negedge rst_n) begin
    if(!rst_n) begin
        tx_cnt     <=  6'd0;
        dac_data_t <= 32'd0;
    end
    else if(lrc_edge == 1'b1) begin
        tx_cnt     <= 6'd0;
        dac_data_t <= dac_data;
    end
    else if(tx_cnt < 6'd35)
        tx_cnt <= tx_cnt + 1'b1;
end

//发送完成信号
always @(posedge aud_bclk or negedge rst_n) begin
    if(!rst_n) begin
        tx_done <= 1'b0;
    end
    else if(tx_cnt == 6'd32)
        tx_done <= 1'b1;
    else
        tx_done <= 1'b0;
end

//把预发送的音频数据串行发送出去
always @(negedge aud_bclk or negedge rst_n) begin
    if(!rst_n) begin
        aud_dacdat <= 1'b0;
    end
    else if(tx_cnt < WL)
        aud_dacdat <= dac_data_t[WL - 1'd1 - tx_cnt];
    else
        aud_dacdat <= 1'b0;
end

endmodule