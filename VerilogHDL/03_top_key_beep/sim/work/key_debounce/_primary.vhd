library verilog;
use verilog.vl_types.all;
entity key_debounce is
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        key             : in     vl_logic;
        key_flag        : out    vl_logic;
        key_value       : out    vl_logic
    );
end key_debounce;
