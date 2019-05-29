library verilog;
use verilog.vl_types.all;
entity tb_ip_ram is
    generic(
        SYS_PERIOD      : integer := 20
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of SYS_PERIOD : constant is 1;
end tb_ip_ram;
