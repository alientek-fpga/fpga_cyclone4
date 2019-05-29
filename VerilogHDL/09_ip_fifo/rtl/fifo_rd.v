//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           fifo_rd
// Last modified Date:  2018/07/06 13:39:20
// Last Version:        V1.0
// Descriptions:        读FIFO模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/07/06 13:39:24
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module fifo_rd(
    //system clock
    input                    clk    ,        // 时钟信号
    input                    rst_n  ,        // 复位信号（低有效）

    //user interface
    input           [7:0]    data   ,        // 从FIFO输出的数据
    input                    rdfull ,        // 读满信号
    input                    rdempty,        // 读空信号
    output   reg             rdreq           // 读请求
);

//reg define
reg   [7:0]                  data_fifo;      // 读取的FIFO数据
reg   [1:0]                  flow_cnt ;      // 状态流转计数

//*****************************************************
//**                    main code
//*****************************************************

//从FIFO中读取数据
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        rdreq <= 1'b0;
        data_fifo <= 8'd0;
    end
    else begin
        case(flow_cnt)
            2'd0: begin
                if(rdfull) begin
                    rdreq <= 1'b1;
                    flow_cnt <= flow_cnt + 1'b1;
                end
                else
                    flow_cnt <= flow_cnt;
            end 
            2'd1: begin
                if(rdempty) begin
                    rdreq <= 1'b0;
                    data_fifo <= 8'd0;
                    flow_cnt  <= 2'd0;
                end
                else begin
                    rdreq <= 1'b1;
                    data_fifo <= data;
                end 
            end 
            default: flow_cnt <= 2'd0;
        endcase
    end
end

endmodule