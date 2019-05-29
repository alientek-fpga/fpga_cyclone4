//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                                
//----------------------------------------------------------------------------------------
// File name:           traffic_light
// Last modified Date:  2018/6/8 9:26:44
// Last Version:        V1.0
// Descriptions:        交通灯控制模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/6/8 9:26:47
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
// Modified by:       正点原子
// Modified date:     
// Version:         
// Descriptions:      
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module  traffic_light(
    //input
    input               sys_clk   ,        //系统时钟
    input               sys_rst_n ,        //系统复位

    output  reg  [1:0]  state     ,        //交通灯的状态，用于控制LED灯的点亮
    output  reg  [5:0]  ew_time   ,        //交通灯东西向数码管要显示的时间数据
    output  reg  [5:0]  sn_time            //交通灯南北向数码管要显示的时间数据
    );
  
//parameter define
parameter  TIME_LED_Y    = 3;              //黄灯发光的时间
parameter  TIME_LED_R    = 30;             //红灯发光的时间
parameter  TIME_LED_G    = 27;             //绿灯发光的时间
parameter  WIDTH         = 25_000_000;     //产生频率为1hz的时钟
  
//reg define
reg    [5:0]     time_cnt;                 //产生数码管显示时间的计数器    
reg    [24:0]    clk_cnt;                  //用于产生clk_1hz的计数器
reg              clk_1hz;                  //1hz时钟

//*****************************************************
//**                    main code                      
//*****************************************************
//计数周期为0.5s的计数器  
always @ (posedge sys_clk or negedge sys_rst_n)begin
    if(!sys_rst_n)
        clk_cnt <= 25'b0;
    else if (clk_cnt < WIDTH - 1'b1)
        clk_cnt <= clk_cnt + 1'b1;
    else 
        clk_cnt <= 25'b0;
end 

//产生频率为1hz的时钟
always @(posedge sys_clk or negedge sys_rst_n)begin
    if(!sys_rst_n)
        clk_1hz <= 1'b0;
    else  if(clk_cnt == WIDTH - 1'b1)
        clk_1hz <= ~ clk_1hz;
    else  
        clk_1hz <=  clk_1hz;
end

//切换交通信号灯工作的4个状态，并产生数码管要显示的时间数据
always @(posedge clk_1hz or negedge sys_rst_n)begin
    if(!sys_rst_n)begin        
        state <= 2'd0;
        time_cnt <= TIME_LED_G ;            //状态1持续的时间
    end 
    else begin
        case (state)
            2'b0:  begin                    //状态1
                ew_time <= time_cnt + TIME_LED_Y - 1'b1;//东西方向数码管要显示的时间数据
                sn_time <= time_cnt - 1'b1;             //南北方向数码管要显示的时间数据
                if (time_cnt > 1)begin      //time_cnt等于1的时候切换状态
                    time_cnt <= time_cnt - 1'b1;
                    state <= state;
                end 
                else begin
                    time_cnt <= TIME_LED_Y; //状态2持续的时间
                    state <= 2'b01;         //切换到状态2
                end 
            end 
            2'b01:  begin                   //状态2
                ew_time <= time_cnt  - 1'b1;
                sn_time <= time_cnt  - 1'b1; 
                if (time_cnt > 1)begin
                    time_cnt <= time_cnt - 1'b1;
                    state <= state;
                end 
                else begin
                    time_cnt <= TIME_LED_G; //状态3持续的时间
                    state <= 2'b10;         //切换到状态3
                end 
            end 
            2'b10:  begin                   //状态3
                ew_time <= time_cnt  - 1'b1;
                sn_time <= time_cnt + TIME_LED_Y - 1'b1; 
                if (time_cnt > 1)begin
                    time_cnt <= time_cnt - 1'b1;
                    state <= state;
                end 
                else begin
                    time_cnt <= TIME_LED_Y; //状态4持续的时间
                    state <= 2'b11;         //切换到转态4
                end 
            end 
            2'b11:  begin                   //状态4
                ew_time <= time_cnt  - 1'b1;
                sn_time <= time_cnt  - 1'b1; 
                if (time_cnt > 1)begin
                    time_cnt <= time_cnt - 1'b1;
                    state <= state;
                end 
                else begin
                    time_cnt <= TIME_LED_G;
                    state <= 2'b0;          //切换到状态1
                end 
            end         
            default: begin
                state <= 2'b0;
                time_cnt <= TIME_LED_G;  
            end 
        endcase
    end 
end                 

endmodule 