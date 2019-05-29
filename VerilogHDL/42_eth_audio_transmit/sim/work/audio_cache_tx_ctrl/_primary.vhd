library verilog;
use verilog.vl_types.all;
entity audio_cache_tx_ctrl is
    generic(
        TX_BUFF_NUM     : vl_logic_vector(0 to 8) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        aud_bclk        : in     vl_logic;
        rst_n           : in     vl_logic;
        aud_rx_done     : in     vl_logic;
        aud_adc_data    : in     vl_logic_vector(31 downto 0);
        eth_tx_clk      : in     vl_logic;
        udp_tx_req      : in     vl_logic;
        udp_tx_done     : in     vl_logic;
        udp_tx_start_en : out    vl_logic;
        udp_tx_byte_num : out    vl_logic_vector(15 downto 0);
        udp_tx_data     : out    vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of TX_BUFF_NUM : constant is 1;
end audio_cache_tx_ctrl;
