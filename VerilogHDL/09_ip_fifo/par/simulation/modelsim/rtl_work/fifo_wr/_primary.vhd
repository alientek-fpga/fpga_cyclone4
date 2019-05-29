library verilog;
use verilog.vl_types.all;
entity fifo_wr is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        wrempty         : in     vl_logic;
        wrfull          : in     vl_logic;
        data            : out    vl_logic_vector(7 downto 0);
        wrreq           : out    vl_logic
    );
end fifo_wr;
