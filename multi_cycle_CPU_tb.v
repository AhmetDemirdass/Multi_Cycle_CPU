module multi_cycle_CPU_tb();

	reg clk, reset;
	wire [3:0] STATE;
	
	
	wire [3:0] ALUFlags;
	wire [7:0] RESULT;

	
	multi_cycle_CPU dut(
	clk, reset, RESULT, STATE, ALUFLAGS);
	
	// clock generation
	always
		begin
		clk = 1; #5; clk = 0; #5;
		end
		
	// initial block for the beginning of the test
	initial
		begin
		reset = 1; #30; reset = 0;
		end
	
	
endmodule
