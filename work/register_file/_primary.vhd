library verilog;
use verilog.vl_types.all;
entity register_file is
    generic(
        W               : integer := 8
    );
    port(
        clock           : in     vl_logic;
        rst             : in     vl_logic;
        A3              : in     vl_logic_vector(2 downto 0);
        A2              : in     vl_logic_vector(2 downto 0);
        A1              : in     vl_logic_vector(2 downto 0);
        WD3             : in     vl_logic_vector;
        R7              : in     vl_logic_vector;
        enable          : in     vl_logic;
        RD1             : out    vl_logic_vector;
        RD2             : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of W : constant is 1;
end register_file;
