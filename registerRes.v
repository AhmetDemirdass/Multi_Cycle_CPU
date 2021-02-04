module registerRes #(parameter W=8) (clock, rst, reg_in, reg_out);

	input clock, rst;
	input [W-1:0] reg_in;
	output reg [W-1:0] reg_out;

	always @(posedge clock)
	begin
		if (rst) 
		begin
			reg_out <= 0;
		end 
		else 
		begin
			reg_out <= reg_in;
		end
	end

endmodule