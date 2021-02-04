module EXTEND(
input  [3:0] in_ext,
input  [1:0] imm_source,
output [7:0] out_ext
);

reg [7:0] ext;
assign out_ext = ext;

initial begin
ext=0;
end

always @(imm_source or in_ext) 
begin
	// Data processing, memory, branching
	case(imm_source)
	2'b00:ext <= {5'b0,in_ext[2:0]};        
	2'b01:ext <= {5'b0,in_ext[2:0]};        
	2'b10:ext <= {in_ext[3],in_ext[3],in_ext[3:0],2'b0};  //for sign extension      
	endcase

end


endmodule