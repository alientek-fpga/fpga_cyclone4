//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           pcf8591
// Last modified Date:  2018/3/19 19:22:12
// Last Version:        V1.0
// Descriptions:        DAC数模转换从0~255变化，外部dac引脚连接至adc引脚，数模转换将结果值
//                      显示至数码管
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/19 19:22:12
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module pcf8591(
    //clock and reset
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
    output   reg  [19:0]  num             // 数码管要显示的数据
);

//parameter
parameter    CONTORL_BYTE = 8'b0100_0000; // PCF8591的控制字
parameter    V_REF        = 12'd3300    ; // 3.3V放大1000倍，避免用小数

//reg define
reg    [7:0]    da_data   ;               // DA数据
reg    [7:0]    ad_data   ;               // AD数据
reg    [3:0]    flow_cnt  ;               // 状态流控制
reg    [18:0]   wait_cnt  ;               // 计数等待

//wire define
wire   [19:0]   num_t     ;               // 临时寄存的数据

//*****************************************************
//**                    main code
//*****************************************************

assign num_t = V_REF * ad_data ;

//DA输出数据
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        da_data  <= 8'd0;
    end
    else if(i2c_rh_wl == 1'b0 & i2c_done == 1'b1)begin
        if(da_data == 8'd255)
            da_data<= 8'd0;
        else
            da_data<= da_data + 1'b1;
    end
end

//AD输入数据处理
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        num <= 20'd0;
    end
    else
        num <= num_t >> 4'd8;
end

//AD、DA控制及采样
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        i2c_exec <= 1'b0;
        i2c_rh_wl<= 1'b0;
        i2c_addr <= 8'd0;
        i2c_data_w <=  8'd0;
        flow_cnt   <=  4'd0;
        wait_cnt   <= 17'd0;
    end
    else begin
        i2c_exec <= 1'b0;
        case(flow_cnt)
            'd0: begin
                if(wait_cnt == 17'd100) begin
                    wait_cnt<= 17'd0;
                    flow_cnt<= flow_cnt + 1'b1;
                end
                else
                    wait_cnt<= wait_cnt + 1'b1;
            end
            //DA转换输出
            'd1: begin
                i2c_exec  <= 1'b1;
                i2c_addr  <= CONTORL_BYTE;
                i2c_rh_wl <= 1'b0;
                i2c_data_w<= da_data;
                flow_cnt  <= flow_cnt + 1'b1;
            end
            'd2: begin
                if(i2c_done == 1'b1) begin
                    flow_cnt<= flow_cnt + 1'b1;
                end
            end
            'd3: begin
            //每1秒变化0.1V，需33秒变化完，共256【0~255】次变化，故每次变化计数为：
            //（33/256）*10^6 = 128906
                if(wait_cnt == 17'd128906) begin
                    wait_cnt<= 17'd0;
                    flow_cnt<= flow_cnt + 1'b1;
                end
                else
                    wait_cnt<= wait_cnt + 1'b1;
            end
            //AD转换输入
            'd4: begin
                i2c_exec  <= 1'b1;
                i2c_addr  <= CONTORL_BYTE;
                i2c_rh_wl <= 1'b1;
                flow_cnt  <= flow_cnt + 1'b1;
            end
            'd5: begin
                if(i2c_done == 1'b1) begin
                    ad_data <= i2c_data_r;
                    flow_cnt<= 4'd0;
                end
            end
            default: flow_cnt <= 4'd0;
        endcase
    end
end

endmodule