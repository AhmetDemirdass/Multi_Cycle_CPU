library verilog;
use verilog.vl_types.all;
entity DECODER3_8 is
    port(
        dec_in          : in     vl_logic_vector(2 downto 0);
        dec_out         : out    vl_logic_vector(7 downto 0)
    );
end DECODER3_8;
