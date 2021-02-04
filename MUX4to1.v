module MUX4to1 #(parameter W = 8)(
input [1:0] select,
input wire [W-1:0] mux_in_0,
input wire [W-1:0] mux_in_1,
input wire [W-1:0] mux_in_2,
input wire [W-1:0] mux_in_3,
output reg [W-1:0] mux_out
);



always@(mux_in_0 or mux_in_1 or select or mux_in_2 or mux_in_3)
begin
	case (select)

	2'b11: mux_out[W-1:0] = mux_in_3[W-1:0];
	2'b10: mux_out[W-1:0] = mux_in_2[W-1:0];
	2'b01: mux_out[W-1:0] = mux_in_1[W-1:0];
	2'b00: mux_out[W-1:0] = mux_in_0[W-1:0];
	endcase
end

endmodule