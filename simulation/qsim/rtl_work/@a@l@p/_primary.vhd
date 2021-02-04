library verilog;
use verilog.vl_types.all;
entity ALP is
    generic(
        W               : integer := 8
    );
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        I               : in     vl_logic_vector(3 downto 0);
        F               : out    vl_logic_vector(7 downto 0);
        C_out           : out    vl_logic;
        OVF             : out    vl_logic;
        Z               : out    vl_logic;
        N               : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of W : constant is 1;
end ALP;
