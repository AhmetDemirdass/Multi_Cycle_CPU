library verilog;
use verilog.vl_types.all;
entity data_instr_memory is
    port(
        clk             : in     vl_logic;
        ADD             : in     vl_logic_vector(7 downto 0);
        mem_write       : in     vl_logic;
        WD              : in     vl_logic_vector(7 downto 0);
        RD              : out    vl_logic_vector(19 downto 0)
    );
end data_instr_memory;
