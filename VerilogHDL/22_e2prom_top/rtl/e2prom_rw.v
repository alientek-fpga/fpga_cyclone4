//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           e2prom_rw
// Last modified Date:  2018/3/12 10:05:17
// Last Version:        V1.0
// Descriptions:        从寄存器地址0~寄存器地址255写入数据0~255；写完之后开始读取寄存器地
//                      址0~寄存器地址255，当读取的值正确之后LED0常亮，否则LED0闪烁
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/12 10:05:14
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module e2prom_rw(
    //global clock
    input                 clk        ,    // 时钟信号
    input                 rst_n      ,    // 复位信号

    //i2c interface
    output                i2c_rh_wl  ,    // I2C读写控制信号
    output   reg          i2c_exec   ,    // I2C触发执行信号
    output   reg  [15:0]  i2c_addr   ,    // I2C器件内地址
    output   reg  [ 7:0]  i2c_data_w ,    // I2C要写的数据
    input         [ 7:0]  i2c_data_r ,    // I2C读出的数据
    input                 i2c_done   ,    // I2C一次操作完成

    //user interface
    output   reg          error_flag      // 错误标志
);

//parameter define
parameter      WAIT    = 14'd5000    ;    // 读写等待时间
parameter      BYTE_N  = 16'd255     ;    // 读写的最大字节地址

//reg define
reg            addr_over ;                // 地址结束标志
reg            rom_w_done;                // 字节全部写入e2prom的标志
reg   [ 1:0]   flow_cnt  ;                // 状态流控制
reg   [13:0]   wait_cnt  ;                // 等待计数

//*****************************************************
//**                    main code
//*****************************************************

//读写控制
assign i2c_rh_wl = addr_over & rom_w_done;

//eeprom字节地址配置
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        i2c_addr <= 16'd0;
        addr_over<=  1'b0;
    end
    else if(i2c_done  == 1'b1) begin
         if(i2c_rh_wl == 1'b1) begin
             if(i2c_addr  < BYTE_N)
                 i2c_addr <= i2c_addr + 1'd1;
             else
                 i2c_addr <= i2c_addr;
         end
         else begin
             if(i2c_addr == BYTE_N) begin
                 i2c_addr <= 16'd0;
                 addr_over<=  1'b1;               //写完指定地址标志
             end
             else
                 i2c_addr <= i2c_addr + 1'd1;
         end
    end
    else
        i2c_addr <= i2c_addr;
end

//读写eeprom
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        flow_cnt   <=  2'b0;
        wait_cnt   <= 14'b0;
        i2c_exec   <=  1'b0;
        i2c_data_w <=  8'd0;
        rom_w_done <=  1'b0;
        error_flag <=  1'b1;
    end
    else begin
        i2c_exec <= 1'b0;
//从eeprom的第1页的第1个字节到第8页的第32个字节(共256字节)写入数据0~255
        if(i2c_rh_wl == 1'b0) begin
            case(flow_cnt)
                2'd0: begin
                    rom_w_done  <=  1'b0;
                    wait_cnt    <= wait_cnt + 1'b1;
                    if(wait_cnt == 14'd100) begin
                        wait_cnt <= 14'd0;
                        flow_cnt <= flow_cnt + 1'b1;
                    end
                end
                2'd1: begin
                    i2c_exec   <= 1'b1;
                    i2c_data_w <= i2c_addr[7:0];
                    flow_cnt   <= flow_cnt + 1'b1;
                end
                2'd2: begin
                    if(i2c_done == 1'b1)
                        flow_cnt   <= flow_cnt + 1'b1;
                end
                2'd3:begin
                    if(wait_cnt == WAIT) begin               //写间隔控制
                        flow_cnt   <=  2'b0;
                        wait_cnt   <= 14'd0;
                        rom_w_done <=  1'b1;
                    end
                    else
                        wait_cnt <= wait_cnt + 1'b1;
                end
            endcase
        end
//读取从eeprom的第1页的第1个字节开始的共256字节的值并判断值是否正确
        else begin
            case(flow_cnt)
                2'd0: begin
                    wait_cnt <= wait_cnt + 1'b1;
                    if(wait_cnt == 14'd100) begin
                        flow_cnt <= flow_cnt + 1'b1;
                        wait_cnt <= 14'd0;
                    end
                end
                2'd1: begin
                    i2c_exec <= 1'b1;
                    flow_cnt <= flow_cnt + 1'b1;
                end
                2'd2: begin
                    if(i2c_done == 1'b1) begin                 // 判断I2C操作是否完成
                        if(i2c_addr[7:0] == i2c_data_r) begin  // 判断读到的值正确与否
                            error_flag   <= 1'b0;              // 读到的值正确
                            flow_cnt     <= 2'b0;              // 返回状态0
                        end
                        else begin
                            error_flag <= 1'b1;                // 读到的值错误
                        end
                    end
                end
                default: flow_cnt <= 2'b0;
            endcase
        end
    end
end

endmodule