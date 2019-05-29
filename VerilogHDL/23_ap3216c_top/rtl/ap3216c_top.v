//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           ap3216c_top
// Last modified Date:  2018/1/30 11:12:36
// Last Version:        V1.0
// Descriptions:        数码管显示距离值，led显示光照强度。
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/1/29 10:55:56
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module ap3216c_top(
    //global clock
    input                sys_clk    ,        // 系统时钟
    input                sys_rst_n  ,        // 系统复位

    //ap3216c interface
    output               ap_scl     ,        // i2c时钟线
    inout                ap_sda     ,        // i2c数据线

    //user interface
    output        [3:0]  led        ,        // led灯接口
    output        [5:0]  sel        ,        // 数码管位选
    output        [7:0]  seg_led             // 数码管段选
);

//parameter define
parameter      SLAVE_ADDR =  7'h1e        ;  // 器件地址
parameter      BIT_CTRL   =  1'b0         ;  // 字地址位控制参数(16b/8b)
parameter      CLK_FREQ   = 26'd50_000_000;  // i2c_dri模块的驱动时钟频率(CLK_FREQ)
parameter      I2C_FREQ   = 18'd250_000   ;  // I2C的SCL时钟频率

//wire define
wire           clk       ;                   // I2C操作时钟
wire           i2c_exec  ;                   // i2c触发控制
wire   [15:0]  i2c_addr  ;                   // i2c操作地址
wire   [ 7:0]  i2c_data_w;                   // i2c写入的数据
wire           i2c_done  ;                   // i2c操作结束标志
wire           i2c_rh_wl ;                   // i2c读写控制
wire   [ 7:0]  i2c_data_r;                   // i2c读出的数据
wire   [15:0]  als_data  ;                   // ALS的数据
wire   [ 9:0]  ps_data   ;                   // PS的数据

//*****************************************************
//**                    main code
//*****************************************************

//例化i2c_dri,调用IIC协议
i2c_dri #(
    .SLAVE_ADDR  (SLAVE_ADDR),               // slave address从机地址，放此处方便参数传递
    .CLK_FREQ    (CLK_FREQ  ),               // i2c_dri模块的驱动时钟频率(CLK_FREQ)
    .I2C_FREQ    (I2C_FREQ  )                // I2C的SCL时钟频率
) u_i2c_dri(
    //global clock
    .clk         (sys_clk   ),               // i2c_dri模块的驱动时钟(CLK_FREQ)
    .rst_n       (sys_rst_n ),               // 复位信号
    //i2c interface
    .i2c_exec    (i2c_exec  ),               // I2C触发执行信号
    .bit_ctrl    (BIT_CTRL  ),               // 器件地址位控制(16b/8b)
    .i2c_rh_wl   (i2c_rh_wl ),               // I2C读写控制信号
    .i2c_addr    (i2c_addr  ),               // I2C器件内地址
    .i2c_data_w  (i2c_data_w),               // I2C要写的数据
    .i2c_data_r  (i2c_data_r),               // I2C读出的数据
    .i2c_done    (i2c_done  ),               // I 2C一次操作完成
    .scl         (ap_scl    ),               // I2C的SCL时钟信号
    .sda         (ap_sda    ),               // I2C的SDA信号
    //user interface
    .dri_clk     (clk       )                // I2C操作时钟
);

//例化AP3216C测量模块
ap3216c u_ap3216c(
    //system clock
    .clk         (clk       ),               // 时钟信号
    .rst_n       (sys_rst_n ),               // 复位信号
    //i2c interface
    .i2c_rh_wl   (i2c_rh_wl ),               // I2C读写控制信号
    .i2c_exec    (i2c_exec  ),               // I2C触发执行信号
    .i2c_addr    (i2c_addr  ),               // I2C器件内地址
    .i2c_data_w  (i2c_data_w),               // I2C要写的数据
    .i2c_data_r  (i2c_data_r),               // I2C读出的数据
    .i2c_done    (i2c_done  ),               // I2C一次操作完成
    //user interface
    .als_data    (als_data  ),               // ALS的数据
    .ps_data     (ps_data   )                // PS的数据
);

//例化动态数码管显示模块
seg_led u_seg_led(
    //module clock
    .clk           (sys_clk  ),              // 时钟信号
    .rst_n         (sys_rst_n),              // 复位信号
    //seg_led interface
    .seg_sel       (sel      ),              // 位选
    .seg_led       (seg_led  ),              // 段选
    //user interface
    .data          (als_data ),              // 显示的数值
    .point         (6'd0     ),              // 小数点具体显示的位置,从高到低,高电平有效
    .en            (1'd1     ),              // 数码管使能信号
    .sign          (1'b0     )               // 符号位（高电平显示“-”号）
);

//例化LED模块
led_disp u_led_disp(
   //system clock
   .clk          (clk      ),                // 时钟信号
   .rst_n        (sys_rst_n),                // 复位信号
   //led interface
   .led          (led      ),                // led灯接口
   //user interface
   .data         (ps_data  )                 // PS的数据
);

endmodule