library verilog;
use verilog.vl_types.all;
entity ip_ram is
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic
    );
end ip_ram;
