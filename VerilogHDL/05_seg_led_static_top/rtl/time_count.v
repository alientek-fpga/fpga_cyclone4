//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           time_count
// Last modified Date:  2018/06/27 14:17:57
// Last Version:        V1.0
// Descriptions:        计时模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/06/27 14:18:19
// Version:             V1
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module time_count(
    input           clk     ,   // 时钟信号
    input           rst_n   ,   // 复位信号

    output   reg    flag        // 一个时钟周期的脉冲信号
);

//parameter define
parameter  MAX_NUM = 25000_000; // 计数器最大计数值

//reg define
reg [24:0] cnt;                 // 时钟分频计数器

//*****************************************************
//**                    main code
//*****************************************************

//计数器对时钟计数，每计时到0.5s,输出一个时钟周期的脉冲信号
always @ (posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        flag <= 1'b0;
        cnt  <= 24'b0;
    end
    else if(cnt < MAX_NUM - 1'b1) begin
        cnt  <= cnt +1'b1;
        flag <= 1'b0;
    end
    else begin
        cnt  <= 24'b0;
        flag <= 1'b1;
    end
end

endmodule 