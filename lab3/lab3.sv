module barrel_shifter(data, shift, shout);
	input logic [15:0] data;
	input logic BTNR;
	input logic BTNL;
	output logic [15:0] shout;

	assign shout[15:0] = BTNR ? {data[0], data[15:1]} : (BTNRL
	 ? {data[14:0], data[15]}: data[15:0];)

endmodule : barrel_shifter 