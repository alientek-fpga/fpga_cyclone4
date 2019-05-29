//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           FFT_top
// Last modified Date:  2018/11/21 13:58:23
// Last Version:        V1.0
// Descriptions:        FFT顶层模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/11/21 13:58:23
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module FFT_top(
    input         clk_50m,
    input         rst_n,
     
    input         audio_clk,
    input         audio_valid,
    input  [15:0] audio_data,
   
    output        data_sop,
    output        data_eop,
    output        data_valid,
    output [15:0] data_modulus
    );

//wire define
wire [15:0] audio_data_w;
wire        fifo_rdreq;
wire        fifo_rd_empty;

wire        fft_rst_n;
wire        fft_ready;
wire        fft_sop;
wire        fft_eop;
wire        fft_valid;

wire        source_sop;
wire        source_eop;
wire        source_valid;
wire [15:0] source_real;
wire [15:0] source_imag;

//*****************************************************
//**                    main code
//***************************************************** 
    
//例化fifo，缓存wm8978输出的音频数据
audio_in_fifo fifo_inst(
    .aclr           (~rst_n),
    
    .wrclk          (audio_clk),
    .wrreq          (audio_valid),
    .data           (audio_data),
    .wrfull         (),
        
    .rdclk          (clk_50m),
    .rdreq          (fifo_rdreq),
    .q              (audio_data_w),
    .rdempty        (fifo_rd_empty)
    );
                
//FFT控制模块，控制FFT的输入端口
fft_ctrl u_fft_ctrl(
    .clk_50m        (clk_50m),
    .rst_n          (rst_n),
                 
    .fifo_rd_empty  (fifo_rd_empty),
    .fifo_rdreq     (fifo_rdreq),
    
    .fft_ready      (fft_ready),
    .fft_rst_n      (fft_rst_n),
    .fft_valid      (fft_valid),
    .fft_sop        (fft_sop),
    .fft_eop        (fft_eop) 
    );

//例化 FFT IP核
FFT FFT_u(
    .clk            (clk_50m),
    .reset_n        (fft_rst_n),

    .sink_ready     (fft_ready),    //FFT准备好信号，此信号为高表示可输入变换数据
    .sink_real      (audio_data_w), //实部
    .sink_imag      (16'd0),        //虚部
    .sink_sop       (fft_sop),      //输入数据起始信号，与第一个数据对齐
    .sink_eop       (fft_eop),      //输入数据结束信号，与最后一个数据对齐
    .sink_valid     (fft_valid),    //输入数据有效信号，在输入数据期间要保持高电平有效
    .inverse        (1'b0),         //高电平为FFT反变换
    .sink_error     (1'b0),         //输入错误信号，置0即可
    
    .source_ready   (1'b1),         //后端模块准备好信号，置1即可
    .source_real    (source_real),  //实部 有符号数
    .source_imag    (source_imag),  //虚部 有符号数
    .source_sop     (source_sop),   //起始信号
    .source_eop     (source_eop),   //终止信号
    .source_valid   (source_valid), //输出有效信号，FFT变换完成后，此信号置高，开始输出数据
    .source_exp     (),             //数据的缩放因子 有符号数
    .source_error   ()              //输出错误信号,若输入的数据格式有误，则不进行FFT变
    );                              //换，并给出错误值

//对FFT输出的实部和虚部进行取模运算
data_modulus u_data_modulus(
    .clk_50m        (clk_50m),
    .rst_n          (rst_n),
    
    .source_real    (source_real),
    .source_imag    (source_imag),
    .source_sop     (source_sop),
    .source_eop     (source_eop),
    .source_valid   (source_valid),

    .data_modulus   (data_modulus),
    .data_sop       (data_sop),
    .data_eop       (data_eop),
    .data_valid     (data_valid)
);

endmodule 