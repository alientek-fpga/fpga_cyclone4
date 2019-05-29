library verilog;
use verilog.vl_types.all;
entity audio_send is
    generic(
        WL              : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        rst_n           : in     vl_logic;
        aud_bclk        : in     vl_logic;
        aud_lrc         : in     vl_logic;
        aud_dacdat      : out    vl_logic;
        dac_data        : in     vl_logic_vector(31 downto 0);
        tx_done         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WL : constant is 1;
end audio_send;
