//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com                                                                      
//淘宝店铺：http://openedv.taobao.com                                                            
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。                                                    
//版权所有，盗版必究。                                                                                
//Copyright(C) 正点原子 2018-2028                                                               
//All rights reserved                                                                       
//----------------------------------------------------------------------------------------  
// File name:           top_traffic                                                             
// Last modified Date:  2018/6/8 9:26:44                                                    
// Last Version:        V1.0                                                                
// Descriptions:        交通信号灯顶层模块                                                             
//----------------------------------------------------------------------------------------  
// Created by:          正点原子                                                                
// Created date:        2018/6/8 9:26:47                                                    
// Version:             V1.0                                                                
// Descriptions:        The original version                                                
//                                                                                          
//----------------------------------------------------------------------------------------  
// Modified by:         正点原子                                                                  
// Modified date:                                                                           
// Version:                                                                                 
// Descriptions:                                                                            
//                                                                                          
//----------------------------------------------------------------------------------------  
//****************************************************************************************//

module top_traffic( 
    input                  sys_clk   ,    //系统时钟信号
    input                  sys_rst_n ,    //系统复位信号
    
    output       [3:0]     sel       ,    //数码管位选信号
    output       [7:0]     seg_led   ,    //数码管段选信号
    output	     [5:0]	   led            //LED使能信号
);

//wire define    
wire   [5:0]  ew_time;                    //东西方向状态剩余时间数据
wire   [5:0]  sn_time;                    //南北方向状态剩余时间数据 
wire   [1:0]  state  ;                    //交通灯的状态，用于控制LED灯的点亮

//*****************************************************
//**                    main code                      
//*****************************************************
//交通灯控制模块    
traffic_light u0_traffic_light(
    .sys_clk                (sys_clk),   
    .sys_rst_n              (sys_rst_n),      
    .ew_time                (ew_time),
    .sn_time                (sn_time),
    .state                  (state)
);

//数码管显示模块	
seg_led    u1_seg_led(
    .sys_clk                (sys_clk)  ,
    .sys_rst_n              (sys_rst_n),
    .ew_time                (ew_time),
    .sn_time                (sn_time), 
    .en                     (1'b1),   
    .sel                    (sel), 
    .seg_led                (seg_led)
);

//led灯控制模块
led   u2_led(
    .sys_clk                (sys_clk  ),
    .sys_rst_n              (sys_rst_n),
    .state                  (state    ),
    .led                    (led      )
); 
   
endmodule        