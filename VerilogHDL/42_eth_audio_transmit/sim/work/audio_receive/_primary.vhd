library verilog;
use verilog.vl_types.all;
entity audio_receive is
    generic(
        WL              : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        rst_n           : in     vl_logic;
        aud_bclk        : in     vl_logic;
        aud_lrc         : in     vl_logic;
        aud_adcdat      : in     vl_logic;
        rx_done         : out    vl_logic;
        adc_data        : out    vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WL : constant is 1;
end audio_receive;
