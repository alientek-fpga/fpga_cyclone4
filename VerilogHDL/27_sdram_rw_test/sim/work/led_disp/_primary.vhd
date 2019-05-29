library verilog;
use verilog.vl_types.all;
entity led_disp is
    port(
        clk_50m         : in     vl_logic;
        rst_n           : in     vl_logic;
        error_flag      : in     vl_logic;
        led             : out    vl_logic
    );
end led_disp;
