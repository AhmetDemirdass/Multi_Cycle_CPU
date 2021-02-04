library verilog;
use verilog.vl_types.all;
entity register_wen is
    generic(
        W               : integer := 8
    );
    port(
        clock           : in     vl_logic;
        rst             : in     vl_logic;
        enable          : in     vl_logic;
        reg_in          : in     vl_logic_vector;
        reg_out         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of W : constant is 1;
end register_wen;
