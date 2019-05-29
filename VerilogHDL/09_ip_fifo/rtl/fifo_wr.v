//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           fifo_wr
// Last modified Date:  2018/07/06 13:38:04
// Last Version:        V1.0
// Descriptions:        写FIFO模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/07/06 13:38:14
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module fifo_wr(
    //mudule clock
    input                   clk    ,        // 时钟信号
    input                   rst_n  ,        // 复位信号

    //user interface
    input                   wrempty,        // 写空信号
    input                   wrfull ,        // 写满信号
    output    reg  [7:0]    data   ,        // 写入FIFO的数据
    output    reg           wrreq           // 写请求
);

//reg define
reg   [1:0]         flow_cnt;               // 状态流转计数

//*****************************************************
//**                    main code
//*****************************************************

//向FIFO中写入数据
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        wrreq <= 1'b0;
        data  <= 8'd0;
        flow_cnt <= 2'd0;
    end
    else begin
        case(flow_cnt)
            2'd0: begin 
                if(wrempty) begin     //写空时，写请求拉高，跳到下一个状态
                    wrreq <= 1'b1;
                    flow_cnt <= flow_cnt + 1'b1;
                end 
                else
                    flow_cnt <= flow_cnt;
            end 
            2'd1: begin               //写满时，写请求拉低，跳回上一个状态
                if(wrfull) begin
                    wrreq <= 1'b0;
                    data  <= 8'd0;
                    flow_cnt <= 2'd0;
                end
                else begin            //没有写满的时候，写请求拉高，继续输入数据
                    wrreq <= 1'b1;
                    data  <= data + 1'd1;
                end
            end 
            default: flow_cnt <= 2'd0;
        endcase
    end
end

endmodule