library verilog;
use verilog.vl_types.all;
entity beep_control is
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        key_flag        : in     vl_logic;
        key_value       : in     vl_logic;
        beep            : out    vl_logic
    );
end beep_control;
