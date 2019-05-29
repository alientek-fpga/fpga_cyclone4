`timescale 1 ns/ 1 ns
module tb_key_led();

parameter T = 20;

reg  [3:0]  key      ;
reg         sys_clk  ;
reg         sys_rst_n;
reg         key_value;

wire [3:0]  led;

initial begin   
     key                <=4'b1111;//按键初始状态为全断开
     sys_clk            <=1'b0;   //初始时钟为低电平
     sys_rst_n          <=1'b0;   //复位信号初始为低电平
#T   sys_rst_n          <=1'b1;   //一个时钟周期后复位信号拉高

#600_000_020 key[0]     <=0;      //0.6s时按下按键1
#800_000_000 key[0]     <=1;    
key[1]                  <=0;      //0.8s后松开按键1，按下按键2
#800_000_000 key[1]     <=1;   
key[2]                  <=0;      //0.8s后松开按键2，按下按键3
#800_000_000 key[2]     <=1;   
key[3]                  <=0;      //0.8s后松开按键3，按下按键4    
#800_000_000 key[3]     <=1;      //0.8s后松开按键4

end 

always # (T/2) sys_clk <= ~sys_clk;
key_led   u_key_led(
      .sys_clk(sys_clk),       
      .sys_rst_n(sys_rst_n),     
      .key(key),                  
      .led(led)          
      );

endmodule