module barrel_shifter(data,shift,shout);
	// 8-bit barrel shifter
	// shifts right only
	// doesn't wrap
	// instructions say must use conditional operator
	input logic [7:0] data;   // data input
	input logic [2:0] shift;  // number of bits to shift right
	output logic [7:0] shout; // shifted data output

	assign shout[7:0] =
		(shift[2:0] == 3'd0) ?       data[7:0]  :
		(shift[2:0] == 3'd1) ? {1'b0,data[7:1]} :
		(shift[2:0] == 3'd2) ? {2'b0,data[7:2]} :
		(shift[2:0] == 3'd3) ? {3'b0,data[7:3]} :
		(shift[2:0] == 3'd4) ? {4'b0,data[7:4]} :
		(shift[2:0] == 3'd5) ? {5'b0,data[7:5]} :
		(shift[2:0] == 3'd6) ? {6'b0,data[7:6]} :
		                       {7'b0,data[7  ]} ;

endmodule