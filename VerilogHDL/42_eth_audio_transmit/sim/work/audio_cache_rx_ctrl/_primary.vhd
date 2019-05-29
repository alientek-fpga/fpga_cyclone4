library verilog;
use verilog.vl_types.all;
entity audio_cache_rx_ctrl is
    port(
        eth_rx_clk      : in     vl_logic;
        rst_n           : in     vl_logic;
        udp_rec_pkt_done: in     vl_logic;
        udp_rec_en      : in     vl_logic;
        udp_rec_data    : in     vl_logic_vector(31 downto 0);
        aud_bclk        : in     vl_logic;
        aud_dac_req     : in     vl_logic;
        dac_data        : out    vl_logic_vector(31 downto 0)
    );
end audio_cache_rx_ctrl;
