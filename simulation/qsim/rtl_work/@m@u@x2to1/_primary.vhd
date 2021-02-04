library verilog;
use verilog.vl_types.all;
entity MUX2to1 is
    generic(
        W               : integer := 8
    );
    port(
        mux_in_1        : in     vl_logic_vector;
        \select\        : in     vl_logic;
        mux_in_0        : in     vl_logic_vector;
        mux_out         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of W : constant is 1;
end MUX2to1;
