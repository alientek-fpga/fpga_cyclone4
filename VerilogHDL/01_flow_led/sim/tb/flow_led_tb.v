`timescale  1ns/1ns                // 定义仿真时间单位1ns和仿真时间精度为1ns

module  flow_led_tb;               // 测试模块

//parameter  define
parameter  T = 20;                 // 时钟周期为20ns

//reg define
reg  sys_clk;                      // 时钟信号
reg  sys_rst_n;                    // 复位信号

//wire define
wire  [3:0]  led;

//*****************************************************
//**                    main code
//*****************************************************

//给输入信号初始值
initial begin
    sys_clk            = 1'b0;
    sys_rst_n          = 1'b0;     // 复位
    #(T+1)  sys_rst_n  = 1'b1;     // 在第21ns的时候复位信号信号拉高
end

//50Mhz的时钟，周期则为1/50Mhz=20ns,所以每10ns，电平取反一次
always #(T/2) sys_clk = ~sys_clk;

//例化led模块
flow_led  u0_flow_led (
    .sys_clk     (sys_clk  ),
    .sys_rst_n   (sys_rst_n),
    .led         (led      )
);

endmodule