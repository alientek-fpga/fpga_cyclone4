library verilog;
use verilog.vl_types.all;
entity fifo is
    port(
        data            : in     vl_logic_vector(7 downto 0);
        rdclk           : in     vl_logic;
        rdreq           : in     vl_logic;
        wrclk           : in     vl_logic;
        wrreq           : in     vl_logic;
        q               : out    vl_logic_vector(7 downto 0);
        rdempty         : out    vl_logic;
        rdfull          : out    vl_logic;
        wrempty         : out    vl_logic;
        wrfull          : out    vl_logic
    );
end fifo;
