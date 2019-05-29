library verilog;
use verilog.vl_types.all;
entity ip_fifo_tb is
    generic(
        PERIOD          : integer := 20
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of PERIOD : constant is 1;
end ip_fifo_tb;
