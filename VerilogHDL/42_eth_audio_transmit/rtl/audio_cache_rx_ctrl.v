//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           audio_cache_rx_ctrl
// Last modified Date:  2018/3/29 19:24:08
// Last Version:        V1.0
// Descriptions:        音频缓存接收控制
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/29 19:24:08
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module audio_cache_rx_ctrl(
    input                eth_rx_clk      ,  //以太网接收时钟    
    input                rst_n           ,  //复位信号，低电平有效
    input                udp_rec_pkt_done,  //以太网单包数据接收完成信号
    input                udp_rec_en      ,  //以太网接收数据使能信号
    input        [31:0]  udp_rec_data    ,  //以太网接收到的数据         
  
    input                aud_bclk        ,  //WM8978位时钟
    input                aud_dac_req     ,  //dac数据请求信号
    output       [31:0]  dac_data           //dac值
    );       

//reg define
reg              rec_done_flag   ;  //单包数据接收完成后给出标志
reg              rec_done_flag_d0;  //异步信号打拍处理
reg              rec_done_flag_d1;  //异步信号打拍处理

wire             fifo_rd_req     ;  //fifo读请求信号

//*****************************************************
//**                    main code
//*****************************************************

//接收完单包数据后再开始读fifo,防止fifo为空时被读取
assign  fifo_rd_req = aud_dac_req & rec_done_flag_d1;

//接收完单包数据后给出标志
always @(posedge eth_rx_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        rec_done_flag <= 1'b0;
    else if(udp_rec_pkt_done)
        rec_done_flag <= 1'b1;
end            

//异步信号打拍处理
always @(posedge aud_bclk or negedge rst_n) begin
    if(rst_n == 1'b0) begin  
        rec_done_flag_d0 <= 1'b0;
        rec_done_flag_d1 <= 1'b0;
    end
    else begin
        rec_done_flag_d0 <= rec_done_flag;
        rec_done_flag_d1 <= rec_done_flag_d0;
    end
end            

//异步fifo
async_fifo_512x32b u_async_fifo(
    .aclr         (~rst_n),
    .data         (udp_rec_data),
    .rdclk        (aud_bclk),
    .rdreq        (fifo_rd_req),
    .wrclk        (eth_rx_clk),
    .wrreq        (udp_rec_en),
    .q            (dac_data),
    .rdempty      (),
    .rdusedw      (),
    .wrfull       ()
    );

endmodule