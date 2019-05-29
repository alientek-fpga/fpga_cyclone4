//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           adda_top
// Last modified Date:  2018/05/21 14:22:59
// Last Version:        V1.0
// Descriptions:        ADDA转换顶层模块模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/05/21 14:23:26
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module adda_top(
    //system clock
    input                sys_clk    ,    // 系统时钟
    input                sys_rst_n  ,    // 系统复位

    //PCF8591 interface
    output               scl        ,    // i2c时钟线
    inout                sda        ,    // i2c数据线

    //user interface
    output        [5:0]  sel        ,    // 数码管位选
    output        [7:0]  seg_led         // 数码管段选
);

//parameter define
parameter    SLAVE_ADDR =  7'h48        ; // 器件地址(SLAVE_ADDR)
parameter    BIT_CTRL   =  1'b0         ; // 字地址位控制参数(16b/8b)
parameter    CLK_FREQ   = 26'd50_000_000; // i2c_dri模块的驱动时钟频率(CLK_FREQ)
parameter    I2C_FREQ   = 18'd250_000   ; // I2C的SCL时钟频率
parameter    POINT      = 6'b00_1000    ; // 控制点亮数码管小数点的位置

//wire define
wire           clk       ;                // I2C操作时钟
wire           i2c_exec  ;                // i2c触发控制
wire   [15:0]  i2c_addr  ;                // i2c操作地址
wire   [ 7:0]  i2c_data_w;                // i2c写入的数据
wire           i2c_done  ;                // i2c操作结束标志
wire           i2c_rh_wl ;                // i2c读写控制
wire   [ 7:0]  i2c_data_r;                // i2c读出的数据
wire   [19:0]  num       ;                // 数码管要显示的数据

//*****************************************************
//**                    main code
//*****************************************************

//例化AD/DA模块
pcf8591 u_pcf8591(
    //global clock
    .clk         (clk       ),            // 时钟信号
    .rst_n       (sys_rst_n ),            // 复位信号
    //i2c interface
    .i2c_exec    (i2c_exec  ),            // I2C触发执行信号
    .i2c_rh_wl   (i2c_rh_wl ),            // I2C读写控制信号
    .i2c_addr    (i2c_addr  ),            // I2C器件内地址
    .i2c_data_w  (i2c_data_w),            // I2C要写的数据
    .i2c_data_r  (i2c_data_r),            // I2C读出的数据
    .i2c_done    (i2c_done  ),            // I2C一次操作完成
    //user interface
    .num         (num       )             // 采集到的电压
);

//例化i2c_dri
i2c_dri #(
    .SLAVE_ADDR  (SLAVE_ADDR),            // slave address从机地址，放此处方便参数传递
    .CLK_FREQ    (CLK_FREQ  ),            // i2c_dri模块的驱动时钟频率(CLK_FREQ)
    .I2C_FREQ    (I2C_FREQ  )             // I2C的SCL时钟频率
) u_i2c_dri(
    //global clock
    .clk         (sys_clk   ),            // i2c_dri模块的驱动时钟(CLK_FREQ)
    .rst_n       (sys_rst_n ),            // 复位信号
    //i2c interface
    .i2c_exec    (i2c_exec  ),            // I2C触发执行信号
    .bit_ctrl    (BIT_CTRL  ),            // 器件地址位控制(16b/8b)
    .i2c_rh_wl   (i2c_rh_wl ),            // I2C读写控制信号
    .i2c_addr    (i2c_addr  ),            // I2C器件内地址
    .i2c_data_w  (i2c_data_w),            // I2C要写的数据
    .i2c_data_r  (i2c_data_r),            // I2C读出的数据
    .i2c_done    (i2c_done  ),            // I 2C一次操作完成
    .scl         (scl       ),            // I2C的SCL时钟信号
    .sda         (sda       ),            // I2C的SDA信号
    //user interface
    .dri_clk     (clk       )             // I2C操作时钟
);

//例化动态数码管显示模块
seg_led u_seg_led(
    //module clock
    .clk           (sys_clk  ),           // 时钟信号
    .rst_n         (sys_rst_n),           // 复位信号
    //seg_led interface
    .seg_sel       (sel      ),           // 位选
    .seg_led       (seg_led  ),           // 段选
    //user interface
    .data          (num      ),           // 显示的数值
    .point         (POINT    ),           // 小数点具体显示的位置,从高到低,高电平有效
    .en            (1'd1     ),           // 数码管使能信号
    .sign          (1'b0     )            // 符号位（高电平显示“-”号）
);

endmodule