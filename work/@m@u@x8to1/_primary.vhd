library verilog;
use verilog.vl_types.all;
entity MUX8to1 is
    generic(
        W               : integer := 8
    );
    port(
        \select\        : in     vl_logic_vector(2 downto 0);
        mux_in_0        : in     vl_logic_vector;
        mux_in_1        : in     vl_logic_vector;
        mux_in_2        : in     vl_logic_vector;
        mux_in_3        : in     vl_logic_vector;
        mux_in_4        : in     vl_logic_vector;
        mux_in_5        : in     vl_logic_vector;
        mux_in_6        : in     vl_logic_vector;
        mux_in_7        : in     vl_logic_vector;
        mux_out         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of W : constant is 1;
end MUX8to1;
