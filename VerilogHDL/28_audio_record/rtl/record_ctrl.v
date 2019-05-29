//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           record_ctrl
// Last modified Date:  2018/05/24 15:55:15
// Last Version:        V1.0
// Descriptions:        录音播放控制
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/05/24 15:55:26
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module record_ctrl #(
    parameter TIME_RECORD = 24'd2880000         // 录音时长参数（48K*2*录音时间s）
)(
    //system clock
    input                   clk            ,    // 时钟信号
    input                   rst_n          ,    // 复位信号

    //SDRAM interface
    output   reg   [15:0]   wr_data        ,    // SDRAM fifo接口写入数据
    input          [15:0]   rd_data        ,    // SDRAM fifo读出的数据
    output   reg            wr_en          ,    // SDRAM fifo接口写入数据使能
    output                  wr_load        ,    // 写地址寄存 & fifo清空
    output   reg            rd_en          ,    // SDRAM fifo接口读出数据使能
    input                   sdram_init_done,    // SDRAM 初始化完成信号

    //user interface
    input          [31:0]   adc_data       ,    // FPGA接收的音频数据
    output   reg   [31:0]   dac_data       ,    // FPGA发送的音频数据
    input                   record_key     ,    // 录音按键
    input                   play_key       ,    // 播放按键
    input                   rx_done        ,    // 音频数据接收完成
    input                   tx_done        ,    // 音频数据发送完成
    output                  neg_play_key        // 录音键的下降沿
);

//reg define
reg    [23:0]    wr_cnt            ;            // 控制写使能与数据计数器
reg    [23:0]    rd_cnt            ;            // 控制读使能与数据计数器
reg              play_key_dy0      ;            // 采play_key的下降沿打拍0
reg              play_key_dy1      ;            // 采play_key的下降沿打拍1
reg              rx_dy0            ;            // 采rx_done的下降沿打拍0
reg              rx_dy1            ;            // 采rx_done的下降沿打拍1
reg              tx_dy0            ;            // 采tx_done的下降沿打拍0
reg              tx_dy1            ;            // 采tx_done的下降沿打拍1
reg              record_key_dy0    ;            // 采record_key的下降沿打拍0
reg              record_key_dy1    ;            // 采record_key的下降沿打拍1
reg              sdram_init_done_d0;            // SDRAM初始化完成信号打拍采样
reg              sdram_init_done_d1;            // SDRAM初始化完成信号打拍采样
reg              play              ;            // 回放录音控制
reg    [23:0]    time_cnt          ;            // 录音长度计时

//wire define
wire             pos_rx            ;            // rx_done的上升沿
wire             pos_tx            ;            // rx_done的上升沿

//*****************************************************
//**                    main code
//*****************************************************

assign  neg_play_key = (~play_key_dy0) & play_key_dy1; // 采下降沿
assign  pos_rx  = rx_dy0 & (~rx_dy1);                  // 采上升沿
assign  pos_tx  = tx_dy0 & (~tx_dy1);                  // 采上升沿
assign  wr_load = record_key_dy0 & (~record_key_dy1);  // 采上升沿

//寄存初始化完成信号采样
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        sdram_init_done_d0 <= 1'b0;
        sdram_init_done_d1 <= 1'b0;
    end
    else begin
        sdram_init_done_d0 <= sdram_init_done;
        sdram_init_done_d1 <= sdram_init_done_d0;
    end 
end

//采一个时钟周期的rx_done和tx_done信号
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        rx_dy0 <= 1'b0;
        rx_dy1 <= 1'b0;
        tx_dy0 <= 1'b0;
        tx_dy1 <= 1'b0;
    end
    else begin
        rx_dy0 <= rx_done;
        rx_dy1 <= rx_dy0 ;
        tx_dy0 <= tx_done;
        tx_dy1 <= tx_dy0 ;
    end
end

//打拍采play_key的下降沿
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        record_key_dy0 <= 1'b0;
        record_key_dy1 <= 1'b0;
        play_key_dy0   <= 1'd0;
        play_key_dy1   <= 1'd0;
    end
    else begin
        record_key_dy0 <= record_key    ;
        record_key_dy1 <= record_key_dy0;
        play_key_dy0   <= play_key      ;
        play_key_dy1   <= play_key_dy0  ;
    end
end

//回放录音控制
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        play <= 1'b0;
    end
    else if(neg_play_key == 1'b1)
        play <= 1'b1;
    else if(record_key == 1'b0)
        play <= 1'b0;
    else if(rd_cnt == time_cnt)
        play <= 1'b0;
end

//SDRAM fifo接口写入音频数据
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        wr_en   <=  1'b0;
        wr_cnt  <= 24'd0;
        wr_data <= 16'd0;
        time_cnt<= 24'd0;
    end
    else if(sdram_init_done_d1 && record_key == 1'b0) begin
        if(pos_rx && wr_cnt < TIME_RECORD) begin
            wr_en    <= 1'b1;
            wr_cnt   <= wr_cnt + 1'b1 ;
            wr_data  <= adc_data[15:0];
            time_cnt <= wr_cnt;
        end 
        else
            wr_en <= 1'b0;
    end
    else begin
        wr_en  <= 1'b0;
        wr_cnt <= 24'd0;
    end
end

//SDRAM fifo接口使能读取音频数据
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        rd_en    <=  1'b0;
        rd_cnt   <= 24'd0;
    end
    else if(play == 1'b1) begin
        if(pos_tx && rd_cnt <= time_cnt) begin
            rd_en  <= 1'b1;
            rd_cnt <= rd_cnt + 1'b1  ;
        end
        else
            rd_en <= 1'b0;
    end
    else begin
        rd_en  <=  1'b0;
        rd_cnt <= 24'd0;
    end
end

//SDRAM fifo接口读取音频数据
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        dac_data <= 32'd0;
    end
    else if(rd_en == 1'b1)
        dac_data[15:0] <= rd_data;
    else if(play == 1'b0)
        dac_data <= 32'd0;
end

endmodule