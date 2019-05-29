

`timescale 1 ns/ 1 ns
module ip_fifo_tb;

//parameter define
parameter   PERIOD = 20;        //定义系统时钟周期

//reg define
reg sys_clk;
reg sys_rst_n;

//初始化
initial begin
    sys_clk <= 1'b0;
    sys_rst_n <= 1'b0;
    #(20*PERIOD + 1)
    sys_rst_n <= 1'b1;
end

always #(PERIOD) sys_clk = ~sys_clk;

ip_fifo u1_ip_fifo(
	.sys_clk   (sys_clk),
	.sys_rst_n (sys_rst_n)
);

endmodule