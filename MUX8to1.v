module MUX8to1 #(parameter W = 8)(
input [2:0] select,
input wire [W-1:0] mux_in_0,
input wire [W-1:0] mux_in_1,
input wire [W-1:0] mux_in_2,
input wire [W-1:0] mux_in_3,
input wire [W-1:0] mux_in_4,
input wire [W-1:0] mux_in_5,
input wire [W-1:0] mux_in_6,
input wire [W-1:0] mux_in_7,
output reg [W-1:0] mux_out
);



always@(mux_in_0 or mux_in_1 or select or mux_in_2 or mux_in_3 or mux_in_4 or mux_in_5 or mux_in_6 or mux_in_7)
begin
	case (select)
	3'b111: mux_out[W-1:0] = mux_in_7[W-1:0];
	3'b110: mux_out[W-1:0] = mux_in_6[W-1:0];
	3'b101: mux_out[W-1:0] = mux_in_5[W-1:0];
	3'b100: mux_out[W-1:0] = mux_in_4[W-1:0];
	3'b011: mux_out[W-1:0] = mux_in_3[W-1:0];
	3'b010: mux_out[W-1:0] = mux_in_2[W-1:0];
	3'b001: mux_out[W-1:0] = mux_in_1[W-1:0];
	3'b000: mux_out[W-1:0] = mux_in_0[W-1:0];
	endcase
end

endmodule