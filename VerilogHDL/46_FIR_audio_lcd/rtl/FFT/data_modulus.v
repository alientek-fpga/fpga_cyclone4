//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           data_modulus
// Last modified Date:  2018/11/21 13:58:23
// Last Version:        V1.0
// Descriptions:        对数据进行取模运算
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/11/21 13:58:23
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module  data_modulus(
    input             clk_50m,
    input             rst_n,
    
    input   [15:0]    source_real,
    input   [15:0]    source_imag,
    input             source_sop,
    input             source_eop,
    input             source_valid,

    output  [15:0]    data_modulus,  
    output  reg       data_sop,
    output  reg       data_eop,
    output  reg       data_valid
);

//reg define
reg  [31:0] source_data;
reg  [15:0] data_real;
reg  [15:0] data_imag;
reg         data_sop1;
reg         data_sop2;
reg         data_eop1;
reg         data_eop2;
reg         data_valid1;
reg         data_valid2;

//*****************************************************
//**                    main code
//***************************************************** 

//取实部和虚部的平方和
always @ (posedge clk_50m or negedge rst_n) begin
    if(!rst_n) begin
        source_data <= 32'd0;
        data_real   <= 16'd0;
        data_imag   <= 16'd0;
    end
    else begin
        if(source_real[15]==1'b0)               //由补码计算原码
            data_real <= source_real;
        else
            data_real <= ~source_real + 1'b1;
            
        if(source_imag[15]==1'b0)               //由补码计算原码
            data_imag <= source_imag;
        else
            data_imag <= ~source_imag + 1'b1;            
                                                //计算原码平方和
        source_data <= (data_real*data_real) + (data_imag*data_imag);
    end
end

//例化sqrt模块，开根号运算
sqrt sqrt_inst (
    .clk              (clk_50m),
    .radical          (source_data),
    
    .q                (data_modulus),
    .remainder        ()
    );
    
//数据取模运算共花费了三个时钟周期，此处延时三个时钟周期
always @ (posedge clk_50m or negedge rst_n) begin
    if(!rst_n) begin
        data_sop    <= 1'b0;
        data_sop1   <= 1'b0;
        data_sop2   <= 1'b0;
        data_eop    <= 1'b0;
        data_eop1   <= 1'b0;
        data_eop2   <= 1'b0;
        data_valid  <= 1'b0;
        data_valid1 <= 1'b0;
        data_valid2 <= 1'b0;
    end
    else begin
        data_valid1 <= source_valid;
        data_valid2 <= data_valid1;
        data_valid  <= data_valid2;
        data_sop1   <= source_sop;
        data_sop2   <= data_sop1;
        data_sop    <= data_sop2;
        data_eop1   <= source_eop;
        data_eop2   <= data_eop1;
        data_eop    <= data_eop2;
    end
end
    
endmodule 