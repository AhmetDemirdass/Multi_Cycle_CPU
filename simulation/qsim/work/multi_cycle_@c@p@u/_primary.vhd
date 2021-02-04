library verilog;
use verilog.vl_types.all;
entity multi_cycle_CPU is
    port(
        AluFlags        : out    vl_logic_vector(3 downto 0);
        ALUSrcA         : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        RegWrite        : in     vl_logic;
        RegSrc          : in     vl_logic_vector(1 downto 0);
        IRWrite         : in     vl_logic;
        MemWrite        : in     vl_logic;
        ADRSrc          : in     vl_logic;
        PCWrite         : in     vl_logic;
        ResultSrc       : in     vl_logic_vector(1 downto 0);
        ImmSrc          : in     vl_logic_vector(1 downto 0);
        ALUSrcB         : in     vl_logic_vector(1 downto 0);
        ALUControl      : in     vl_logic_vector(3 downto 0);
        RESULT          : out    vl_logic_vector(7 downto 0)
    );
end multi_cycle_CPU;
