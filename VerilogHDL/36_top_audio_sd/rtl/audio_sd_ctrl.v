//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           audio_sd_ctrl
// Last modified Date:  2018/06/14 19:39:53
// Last Version:        V1.0
// Descriptions:        实现SD卡与WM8978的交互
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/06/14 19:40:08
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module audio_sd_ctrl(
    //system clock
    input                  sd_clk         ,      // SD卡时钟信号
    input                  aud_bclk       ,      // WM8978位时钟信号
    input                  rst_n          ,      // 复位信号
    //user interface
    input                  sd_init_done   ,      // SD卡初始化完成
    input                  rd_busy        ,      // 读忙信号
    input                  tx_done        ,
    input          [15:0]  music_data     ,      // 音乐数据
    input          [ 9:0]  wrusedw_cnt    ,      // fifo内剩余写入的字数
    output   reg           rd_start_en    ,      // 开始读出使能
    output   reg   [31:0]  rd_sec_addr    ,      // 读SD卡扇区地址
    output   reg   [31:0]  dac_data              // 音频数据
);

//parameter define
parameter       START_ADDR = 15'd8448  ;         // 音乐存放的起始地址
parameter       AUDIO_SEC  = 17'd104422;         // 音乐占用的扇区数

//reg define
reg    [ 1:0]   flow_cnt       ;                 // 状态流计数
reg    [16:0]   rd_sec_cnt     ;                 // 读扇区次数计数器
reg             rd_busy_d0     ;                 // 读忙信号打拍d0
reg             rd_busy_d1     ;                 // 读忙信号打拍d1

//wire define
wire            neg_rd_busy    ;                 // 读忙信号的下降沿

//*****************************************************
//**                    main code
//*****************************************************

assign  neg_rd_busy = rd_busy_d1 & (~rd_busy_d0);  // 采读忙信号下降沿

//音频处理
always @(posedge aud_bclk or negedge rst_n) begin
    if(!rst_n) begin
        dac_data <= 31'd0;
    end
    else if(tx_done)
        dac_data[15:0] <= {music_data[7:0],music_data[15:8]};
end

//打拍采上升沿
always @(posedge sd_clk or negedge rst_n) begin
    if(!rst_n) begin
        rd_busy_d0 <= 1'b0;
        rd_busy_d1 <= 1'b0;
    end
    else begin
        rd_busy_d0 <= rd_busy;
        rd_busy_d1 <= rd_busy_d0;
    end
end

//SD扇区地址变更
always @(posedge sd_clk or negedge rst_n) begin
    if(!rst_n) begin
        rd_sec_addr <= 32'd0;
    end
    else if(rd_sec_addr <= START_ADDR + AUDIO_SEC)
        rd_sec_addr <= rd_sec_cnt + START_ADDR;
end

//读取音频数据
always @(posedge sd_clk or negedge rst_n) begin
    if(!rst_n) begin
        flow_cnt   <=  2'b0;
        rd_sec_cnt <= 17'd0;
    end
    else begin
        rd_start_en <= 1'b0;
        case(flow_cnt)
        2'd0: begin
            if(sd_init_done == 1'b1) begin
               flow_cnt     <= flow_cnt + 1'd1;
               rd_start_en  <= 1'b1;
            end
        end
        2'd1: begin
        //读忙信号下降沿说明单次读出结束，开始读取下一扇区地址数据
            if(rd_sec_cnt < AUDIO_SEC) begin
                if(neg_rd_busy) begin
                    rd_sec_cnt <= rd_sec_cnt + 17'd1;   
                    flow_cnt   <= flow_cnt + 1'd1;
                end
            end
            else begin
                rd_sec_cnt <= 17'd0;
                flow_cnt   <=  2'd0;
            end
        end
        2'd2: begin
            if(wrusedw_cnt <= 10'd255) begin
                rd_start_en <= 1'b1;
                flow_cnt <= 2'd1;
            end
        end
        default: flow_cnt <= 2'd0;
        endcase
    end
end

endmodule