//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           audio_cache_tx_ctrl
// Last modified Date:  2018/3/29 19:24:08
// Last Version:        V1.0
// Descriptions:        音频缓存发送控制
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/29 19:24:08
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module audio_cache_tx_ctrl(
    input                aud_bclk       ,  //WM8978位时钟
    input                rst_n          ,  //复位信号，低电平有效
    input                aud_rx_done    ,  //音频数据接收完成信号
    input        [31:0]  aud_adc_data   ,  //32位音频数据
    
    input                eth_tx_clk     ,  //以太网发送时钟
    input                udp_tx_req     ,  //以太网发送请求数据信号
    input                udp_tx_done    ,  //以太网发送完成信号              
    output  reg          udp_tx_start_en,  //以太网开始发送信号
    output       [15:0]  udp_tx_byte_num,  //以太网发送的字节数
    output       [31:0]  udp_tx_data        //以太网发送的数据
    );

//parameter define
//fifo缓存的数量大于等于此值时控制udp开始发送数据
parameter  AUDIO_TX_NUM = 9'd256;

//reg define
reg             udp_tx_flag ;              //udp正在发送数据的标志

//wire define
wire    [8:0]  data_cnt;                  //fifo中缓存的个数

//*****************************************************
//**                    main code
//*****************************************************

//以太网发送的字节数(1个32位音频数据 = 4个字节),即udp_tx_byte_num = AUDIO_TX_NUM * 4
assign  udp_tx_byte_num = {AUDIO_TX_NUM,2'd0};  

//判断fifo中缓存的个数，超过预设值控制udp开始发送数据
always @(posedge eth_tx_clk or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        udp_tx_flag <= 1'b0;
        udp_tx_start_en <= 1'b0;
    end
    else begin
        udp_tx_start_en <= 1'b0;
        //只有当udp没有发送数据时才判断fifo大小是否满足发送条件
        if(udp_tx_flag == 1'b0) begin      
            if(data_cnt >= AUDIO_TX_NUM) begin
                udp_tx_flag <= 1'b1;
                udp_tx_start_en <= 1'b1;       //udp开始发送信号
            end    
        end        
        else if(udp_tx_done)                   //udp发送完成后,将udp发送标志清零
           udp_tx_flag <= 1'b0;              
    end        
end          

//异步fifo
async_fifo_512x32b u_async_fifo(
    .aclr         (~rst_n),
    .data         (aud_adc_data),
    .rdclk        (eth_tx_clk),
    .rdreq        (udp_tx_req),
    .wrclk        (aud_bclk),
    .wrreq        (aud_rx_done),
    .q            (udp_tx_data),
    .rdempty      (),
    //注意rdusedw为读时钟下的计数,如果需要在写时钟下读取数据时,在建立fifo时选择wrusedw
    .rdusedw      (data_cnt),                  //fifo缓存的个数
    .wrfull       ()
    );

endmodule