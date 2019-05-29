library verilog;
use verilog.vl_types.all;
entity fifo_rd is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        data            : in     vl_logic_vector(7 downto 0);
        rdfull          : in     vl_logic;
        rdempty         : in     vl_logic;
        rdreq           : out    vl_logic
    );
end fifo_rd;
