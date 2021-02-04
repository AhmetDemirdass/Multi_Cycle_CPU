library verilog;
use verilog.vl_types.all;
entity EXTEND is
    port(
        in_ext          : in     vl_logic_vector(3 downto 0);
        imm_source      : in     vl_logic_vector(1 downto 0);
        out_ext         : out    vl_logic_vector(7 downto 0)
    );
end EXTEND;
