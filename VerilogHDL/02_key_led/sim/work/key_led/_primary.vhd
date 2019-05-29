library verilog;
use verilog.vl_types.all;
entity key_led is
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        key             : in     vl_logic_vector(3 downto 0);
        led             : out    vl_logic_vector(3 downto 0)
    );
end key_led;
