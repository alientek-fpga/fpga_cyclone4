library verilog;
use verilog.vl_types.all;
entity wrfifo is
    port(
        aclr            : in     vl_logic;
        data            : in     vl_logic_vector(15 downto 0);
        rdclk           : in     vl_logic;
        rdreq           : in     vl_logic;
        wrclk           : in     vl_logic;
        wrreq           : in     vl_logic;
        q               : out    vl_logic_vector(15 downto 0);
        rdusedw         : out    vl_logic_vector(9 downto 0)
    );
end wrfifo;
