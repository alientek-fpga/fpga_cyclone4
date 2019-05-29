//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           rtc
// Last modified Date:  2018/05/22 15:04:38
// Last Version:        V1.0
// Descriptions:        实时时钟
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/05/22 15:05:04
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module rtc(
    //system clock
    input           sys_clk    ,             // 系统时钟
    input           sys_rst_n  ,             // 系统复位

    //pcf8563 interface
    output          rtc_scl    ,             // i2c时钟线
    inout           rtc_sda    ,             // i2c数据线

    //user interface
    input           key2       ,             // 开关按键
    output   [5:0]  sel        ,             // 数码管位选
    output   [7:0]  seg_led                  // 数码管段选
);

//parameter define
parameter      SLAVE_ADDR =  7'h51        ;  // 器件地址
parameter      BIT_CTRL   =  1'b0         ;  // 字地址位控制参数(16b/8b)
parameter      CLK_FREQ   = 26'd50_000_000;  // i2c_dri模块的驱动时钟频率(CLK_FREQ)
parameter      I2C_FREQ   = 18'd250_000   ;  // I2C的SCL时钟频率
parameter      POINT      = 6'b010100     ;  // 控制点亮数码管小数点的位置
//初始时间设置，从高到低为年到秒，各占8bit
parameter      TIME_INI   = 48'h18_05_23_09_30_00;

//wire define
wire           clk       ;                   // I2C操作时钟
wire           i2c_exec  ;                   // i2c触发控制
wire   [15:0]  i2c_addr  ;                   // i2c操作地址
wire   [ 7:0]  i2c_data_w;                   // i2c写入的数据
wire           i2c_done  ;                   // i2c操作结束标志
wire           i2c_rh_wl ;                   // i2c读写控制
wire   [ 7:0]  i2c_data_r;                   // i2c读出的数据
wire   [23:0]  num       ;                   // 数码管要显示的数据
wire           key_value ;                   // 按键消抖后的数据

//*****************************************************
//**                    main code
//*****************************************************

//例化i2c_dri,调用IIC协议
i2c_dri #(
    .SLAVE_ADDR  (SLAVE_ADDR),    // slave address从机地址，放此处方便参数传递
    .CLK_FREQ    (CLK_FREQ  ),    // i2c_dri模块的驱动时钟频率(CLK_FREQ)
    .I2C_FREQ    (I2C_FREQ  )     // I2C的SCL时钟频率
) u_i2c_dri(
    //global clock
    .clk         (sys_clk   ),    // i2c_dri模块的驱动时钟(CLK_FREQ)
    .rst_n       (sys_rst_n ),    // 复位信号
    //i2c interface
    .i2c_exec    (i2c_exec  ),    // I2C触发执行信号
    .bit_ctrl    (BIT_CTRL  ),    // 器件地址位控制(16b/8b)
    .i2c_rh_wl   (i2c_rh_wl ),    // I2C读写控制信号
    .i2c_addr    (i2c_addr  ),    // I2C器件内地址
    .i2c_data_w  (i2c_data_w),    // I2C要写的数据
    .i2c_data_r  (i2c_data_r),    // I2C读出的数据
    .i2c_done    (i2c_done  ),    // I 2C一次操作完成
    .scl         (rtc_scl   ),    // I2C的SCL时钟信号
    .sda         (rtc_sda   ),    // I2C的SDA信号
    //user interface
    .dri_clk     (clk       )     // I2C操作时钟
);

//例化PCF8563测量模块
pcf8563 #(.TIME_INI(TIME_INI)
) u_pcf8563(
    //system clock
    .clk         (clk       ),    // 时钟信号
    .rst_n       (sys_rst_n ),    // 复位信号
    //i2c interface
    .i2c_rh_wl   (i2c_rh_wl ),    // I2C读写控制信号
    .i2c_exec    (i2c_exec  ),    // I2C触发执行信号
    .i2c_addr    (i2c_addr  ),    // I2C器件内地址
    .i2c_data_w  (i2c_data_w),    // I2C要写的数据
    .i2c_data_r  (i2c_data_r),    // I2C读出的数据
    .i2c_done    (i2c_done  ),    // I2C一次操作完成
    //user interface
    .key_value   (key_value ),    // 按键切换输入
    .num         (num       )     // 数码管要显示的数据
); 

//例化数码管驱动模块
seg_bcd_dri u_seg_bcd_dri(
   //input
   .clk          (sys_clk   ),    // 时钟信号
   .rst_n        (sys_rst_n ),    // 复位信号
   .num          (num       ),    // 6个数码管要显示的数值
   .point        (POINT     ),    // 小数点具体显示的位置,从高到低,高有效
   //output
   .sel          (sel       ),    // 数码管位选
   .seg_led      (seg_led   )     // 数码管段选
);

//例化消抖模块
key_debounce u_key_debounce(
    .clk         (sys_clk   ),    //外部50M时钟
    .rst_n       (sys_rst_n ),    //外部复位信号，低有效
    .key         (key2      ),    //外部按键输入
	 .key_value   (key_value ),    //按键消抖后的数据
    .key_flag    ()               //按键数据有效信号
);

endmodule