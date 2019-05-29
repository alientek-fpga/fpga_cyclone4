`timescale 1ns/1ns
module tb_led_dynamic();

//parameter define
parameter   T =20 ;

//reg define
reg sys_clk;
reg sys_rst_n;

//wire define
wire seg_led;
wire sel;

//*****************************************************
//**                    main code
//*****************************************************

//????????
initial begin
    sys_clk              <=1'b0;
    sys_rst_n            <=1'b0;
    #50 sys_rst_n        <=1'b1;  
end
   
//50Mhz????????1/50Mhz=20ns,???10ns???????
always # (T/2) sys_clk <= ~sys_clk;

top_seg_led  u0(
.sys_clk    (sys_clk),
.sys_rst_n  (sys_rst_n),
.sel        (sel),
.seg_led        (seg_led)
);
endmodule      