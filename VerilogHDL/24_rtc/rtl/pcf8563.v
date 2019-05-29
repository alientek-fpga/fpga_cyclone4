//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           pcf8563
// Last modified Date:  2018/3/16 11:11:46
// Last Version:        V1.0
// Descriptions:        数码管默认显示年月日，按下KEY0之后显示时分秒；再次按下KEY0之后显示年月日。
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/16 11:11:49
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module pcf8563 #(
    // 初始时间设置，从高到低为年到秒，各占8bit
    parameter  TIME_INI = 48'h18_03_19_09_30_00)(
    //system clock 50MHz
    input                 clk        ,    // 时钟信号
    input                 rst_n      ,    // 复位信号

    //i2c interface
    output   reg          i2c_rh_wl  ,    // I2C读写控制信号
    output   reg          i2c_exec   ,    // I2C触发执行信号
    output   reg  [15:0]  i2c_addr   ,    // I2C器件内地址
    output   reg  [ 7:0]  i2c_data_w ,    // I2C要写的数据
    input         [ 7:0]  i2c_data_r ,    // I2C读出的数据
    input                 i2c_done   ,    // I2C一次操作完成

    //user interface
    input                 key_value  ,    // 按键切换输入
    output        [23:0]  num             // 数码管要显示的数据
);

//reg define
reg            key_dy0   ;                // 延迟打拍
reg            key_dy1   ;                // 延迟打拍
reg            switch    ;                // 按键切换显示日期、时间
reg   [3:0]    flow_cnt  ;                // 状态流控制
reg  [12:0]    wait_cnt  ;                // 计数等待

//PCF8563T的秒、分、时、日、月、年数据
reg   [7:0]    sec       ;                // 秒
reg   [7:0]    min       ;                // 分
reg   [7:0]    hour      ;                // 时
reg   [7:0]    day       ;                // 日
reg   [7:0]    mon       ;                // 月
reg   [7:0]    year      ;                // 年
wire  [23:0]   rtc_time  ;                // 时间，从低位到高位依次是秒、分、时，各8bit
wire  [23:0]   rtc_date  ;                // 日期，从低位到高位依次是日、月、年，各8bit

//wire define
wire           neg_sap   ;                // 采下降沿得到的信号

//*****************************************************
//**                    main code
//*****************************************************

assign neg_sap  = (~key_dy0 & key_dy1);   // 按键按下时，得到一个周期的高电平信号
assign rtc_time = {hour,min,sec};
assign rtc_date = {year,mon,day};
//通过switch切换时间/日期显示
assign num      = switch ? rtc_time : rtc_date;

//打拍（采按键时的下降沿）
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        key_dy0  <= 1'b1;
        key_dy1  <= 1'b1;
    end
    else begin
        key_dy0 <= key_value;
        key_dy1 <= key_dy0  ;
    end
end

//按键切换
always @(posedge clk or negedge rst_n ) begin
    if(!rst_n)
        switch<= 1'b0;
    else if (neg_sap)
        switch <= ~switch;
end

//从PCF8563T读出的时间、日期数据
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        sec        <= 8'h0;
        min        <= 8'h0;
        hour       <= 8'h0;
        day        <= 8'h0;
        mon        <= 8'h0;
        year       <= 8'h0;
        i2c_exec   <= 1'b0;
        i2c_rh_wl  <= 1'b0;
        i2c_addr   <= 8'd0;
        i2c_data_w <= 8'd0;
        flow_cnt   <= 4'd0;
        wait_cnt   <= 13'd0;
    end
    else begin
        i2c_exec <= 1'b0;
        case(flow_cnt)
            //上电初始化
            4'd0: begin
                if(wait_cnt == 13'd8000) begin
                    wait_cnt<= 12'd0;
                    flow_cnt<= flow_cnt + 1'b1;
                end
                else
                    wait_cnt<= wait_cnt + 1'b1;
            end
            //写读秒
            4'd1: begin
                i2c_exec  <= 1'b1;
                i2c_addr  <= 8'h02;
                flow_cnt  <= flow_cnt + 1'b1;
                i2c_data_w<= TIME_INI[7:0];
            end
            4'd2: begin
                if(i2c_done == 1'b1) begin
                    sec     <= i2c_data_r[6:0];
                    flow_cnt<= flow_cnt + 1'b1;
                end
            end
            //写读分
            4'd3: begin
                i2c_exec  <= 1'b1;
                i2c_addr  <= 8'h03;
                flow_cnt  <= flow_cnt + 1'b1;
                i2c_data_w<= TIME_INI[15:8];
            end
            4'd4: begin
                if(i2c_done == 1'b1) begin
                    min     <= i2c_data_r[6:0];
                    flow_cnt<= flow_cnt + 1'b1;
                end
            end
            //写读时
            4'd5: begin
                i2c_exec  <= 1'b1;
                i2c_addr  <= 8'h04;
                flow_cnt  <= flow_cnt + 1'b1;
                i2c_data_w<= TIME_INI[23:16];
            end
            4'd6: begin
                if(i2c_done == 1'b1) begin
                    hour    <= i2c_data_r[5:0];
                    flow_cnt<= flow_cnt + 1'b1;
                end
            end
            //写读天
            4'd7: begin
                i2c_exec  <= 1'b1;
                i2c_addr  <= 8'h05;
                flow_cnt  <= flow_cnt + 1'b1;
                i2c_data_w<= TIME_INI[31:24];
            end
            4'd8: begin
                if(i2c_done == 1'b1) begin
                    day     <= i2c_data_r[5:0];
                    flow_cnt<= flow_cnt + 1'b1;
                end
            end
            //写读月
            4'd9: begin
                i2c_exec  <= 1'b1;
                i2c_addr  <= 8'h07;
                flow_cnt  <= flow_cnt + 1'b1;
                i2c_data_w<= TIME_INI[39:32];
            end
            4'd10: begin
                if(i2c_done == 1'b1) begin
                    mon     <= i2c_data_r[4:0];
                    flow_cnt<= flow_cnt + 1'b1;
                end
            end
            //写读年
            4'd11: begin
                i2c_exec  <= 1'b1;
                i2c_addr  <= 8'h08;
                flow_cnt  <= flow_cnt + 1'b1;
                i2c_data_w<= TIME_INI[47:40];
            end
            4'd12: begin
                if(i2c_done == 1'b1) begin
                    year     <= i2c_data_r;
                    i2c_rh_wl<= 1'b1;
                    flow_cnt <= 4'd1;
                end
            end
            default: flow_cnt <= 4'd0;
        endcase
    end
end

endmodule