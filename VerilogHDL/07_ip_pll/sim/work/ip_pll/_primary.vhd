library verilog;
use verilog.vl_types.all;
entity ip_pll is
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        clk_100m        : out    vl_logic;
        clk_100m_180deg : out    vl_logic;
        clk_50m         : out    vl_logic;
        clk_25m         : out    vl_logic
    );
end ip_pll;
