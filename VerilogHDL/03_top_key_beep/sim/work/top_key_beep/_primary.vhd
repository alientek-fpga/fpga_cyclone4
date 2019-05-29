library verilog;
use verilog.vl_types.all;
entity top_key_beep is
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        key             : in     vl_logic;
        beep            : out    vl_logic
    );
end top_key_beep;
