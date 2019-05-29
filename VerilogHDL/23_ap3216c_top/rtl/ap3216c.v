//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           ap3216c
// Last modified Date:  2018/05/10 15:27:55
// Last Version:        V1.0
// Descriptions:        测量环境光照强度和距离值
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/05/10 15:27:49
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module ap3216c(
    //system clock
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
    output   reg  [15:0]  als_data   ,    // ALS的数据
    output   reg  [ 9:0]  ps_data         // PS的数据
);

//parameter define
parameter      TIME_PS   = 14'd12_500  ;  // PS转换时间为12.5ms(clk = 1MHz)
parameter      TIME_ALS  = 17'd100_000 ;  // ALS转换时间为100ms(clk = 1MHz)
parameter      TIME_REST =  8'd2       ;  // 停止后重新开始的时间间隔控制

//reg define
reg   [ 3:0]   flow_cnt   ;               // 状态流控制
reg   [18:0]   wait_cnt   ;               // 计数等待
reg   [15:0]   als_data_t ;               // ALS的临时数据
reg            als_done   ;               // 环境光照强度值采集完成信号
reg   [ 9:0]   ps_data_t  ;               // PS的临时数据
reg            ir_of      ;               // 溢出标志（判断ps_data是否有效）
reg            obj        ;               // 物体状态标志（0远离1靠近）

//*****************************************************
//**                    main code
//*****************************************************

//配置AP3216C并读取数据
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        i2c_exec   <=  1'b0;
        i2c_addr   <=  8'd0;
        i2c_rh_wl  <=  1'b0;
        i2c_data_w <=  8'h0;
        flow_cnt   <=  4'd0;
        wait_cnt   <= 18'd0;
        ps_data    <= 10'd0;
        ps_data_t  <= 10'd0;
        ir_of      <=  1'b0;
        obj        <=  1'b0;
        als_done   <=  1'b0;
        als_data_t <= 16'd0;
    end
    else begin
        i2c_exec <= 1'b0;
        case(flow_cnt)
            //初始化AP3216C
            4'd0: begin
                if(wait_cnt == 18'd100) begin
                    wait_cnt <= 18'd0;
                    flow_cnt <= flow_cnt + 1'b1;
                end
                else
                    wait_cnt <= wait_cnt +1'b1;
            end
            //配置AP3216C的功能模式
            4'd1: begin
                i2c_exec   <= 1'b1 ;
                i2c_rh_wl  <= 1'b0 ;
                i2c_addr   <= 8'h00;               // 配置系统寄存器
                i2c_data_w <= 8'h03;               // 激活ALS+PS+IR 功能
                flow_cnt   <= flow_cnt + 1'b1;
            end
            //配置完成
            4'd2: begin
                if(i2c_done)
                    flow_cnt <= flow_cnt + 1'b1;
            end
            //等待PS转换完成（12.5ms）
            4'd3: begin
                if(wait_cnt  == TIME_PS) begin
                    wait_cnt <= 18'd0;
                    flow_cnt <= flow_cnt + 1'd1;
                end
                else
                    wait_cnt <= wait_cnt + 1'b1;
            end
            //预读PS Data Register(0x0E）
            4'd4: begin
                i2c_exec <= 1'b1;
                i2c_rh_wl<= 1'b1;
                i2c_addr <= 8'h0E;
                flow_cnt <= flow_cnt + 1'b1;
            end
            //读PS Data Register(0x0E）
            4'd5: begin
                if(i2c_done) begin
                    flow_cnt     <= flow_cnt + 1'b1;
                    ps_data_t[3:0] <= i2c_data_r[3:0];
                    ir_of        <= i2c_data_r[6]  ;
                    obj          <= i2c_data_r[7]  ;
                end
            end
            //等待一段时间以进行下一次读写
            4'd6: begin
                if(wait_cnt == TIME_REST) begin//TIME_REST
                    wait_cnt <= 18'd0;
                    flow_cnt <= flow_cnt + 1'b1;
                end
                else
                    wait_cnt <= wait_cnt +1'b1;
            end
            //预读PS Data Register(0x0F）
            4'd7: begin
                i2c_exec <= 1'b1;
                i2c_rh_wl<= 1'b1;
                i2c_addr <= 8'h0F;
                flow_cnt <= flow_cnt + 1'b1;
            end
            //读PS Data Register(0x0F）
            4'd8: begin
                if(i2c_done) begin
                    flow_cnt     <= flow_cnt + 1'b1;
                    ps_data_t[9:4] <= i2c_data_r[5:0];
                    ir_of        <= i2c_data_r[6]  ;
                    obj          <= i2c_data_r[7]  ;
                end
            end
            //等待ALS转换完成（100ms）
            4'd9: begin
                if(wait_cnt  ==  TIME_ALS) begin
                    wait_cnt <= 18'd0;
                    flow_cnt <= flow_cnt + 1'd1;
                          ps_data  <= ps_data_t;
                end
                else
                    wait_cnt <= wait_cnt + 1'b1;
            end
            //预读ALS Data Register(0x0C）
            4'd10: begin
                i2c_exec <= 1'b1;
                i2c_rh_wl<= 1'b1;
                i2c_addr <= 8'h0C;
                flow_cnt <= flow_cnt + 1'b1;
            end
            //读ALS Data Register(0x0C）
            4'd11: begin
                if(i2c_done) begin
                    als_done        <= 1'b0;
                    als_data_t[7:0] <= i2c_data_r;
                    flow_cnt        <= flow_cnt + 1'b1;
                end
            end
            //等待一段时间以进行下一次读写
            4'd12: begin
                if(wait_cnt == TIME_REST) begin
                    wait_cnt <= 18'd0;
                    flow_cnt <= flow_cnt + 1'b1;
                end
                else
                    wait_cnt <= wait_cnt +1'b1;
            end
            //预读ALS Data Register(0x0D）
            4'd13: begin
                i2c_exec <= 1'b1;
                i2c_rh_wl<= 1'b1;
                i2c_addr <= 8'h0D;
                flow_cnt <= flow_cnt + 1'b1;
            end
            //读ALS Data Register(0x0D）
            4'd14: begin
                if(i2c_done) begin
                    als_done         <= 1'b1;
                    als_data_t[15:8] <= i2c_data_r;
                    flow_cnt         <= 4'd3;             //跳转到状态3重新读取数据
                end
            end
        endcase
    end
end

//当采集的环境光转换成光照强度(单位:lux)
always @ (*) begin
    if(als_done)
	 als_data = als_data_t * 6'd35 / 7'd100;
end

endmodule