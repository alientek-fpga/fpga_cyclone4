//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                                  
//----------------------------------------------------------------------------------------
// File name:           udp_32_to_16bit
// Last modified Date:  2018/1/30 11:12:36
// Last Version:        V1.1
// Descriptions:        将UDP模块接收到的32bit数据转换成16bit数据
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/1/29 10:55:56
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module udp_32_to_16bit(
    input             eth_rx_clk,
    input             rst_n,
    
    input             udp_rec_en,
    input      [31:0] udp_rec_data,
    
    output reg        udp_rec_en_16,
    output reg [15:0] udp_rec_data_16
    );
    
//reg define
reg rec_en_flag;

//*****************************************************
//**                    main code
//***************************************************** 
    
//将UDP模块的接收数据有效信号延时一个时钟周期
always @(posedge eth_rx_clk or negedge rst_n)begin
    if(!rst_n)
        rec_en_flag <=0;
    else
        rec_en_flag <= udp_rec_en;
end

//分两个时钟周期输出UPP模块接收数据的高十六位和低十六位
always @(posedge eth_rx_clk or negedge rst_n)begin
    if(!rst_n) begin     
        udp_rec_en_16 <= 1'b0;
        udp_rec_data_16 <= 1'b0;
    end
    else if(udp_rec_en)begin
        udp_rec_en_16 <= 1'b1;
        udp_rec_data_16 <= udp_rec_data[31:16];
    end
    else if(rec_en_flag)begin   
        udp_rec_en_16 <= 1'b1;
        udp_rec_data_16 <= udp_rec_data[15:0];
    end
    else begin
        udp_rec_en_16 <= 0;
        udp_rec_data_16 <= udp_rec_data_16;
    end
end
    
endmodule 