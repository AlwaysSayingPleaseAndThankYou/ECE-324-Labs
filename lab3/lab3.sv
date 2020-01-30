module barrel_shifter(data, shift, shout);
	input logic [15:0] data;
	input logic direction;
	output logic [15:0] shout;

	assign shout[15:0] = direction ? {data[0], data[15:1]} : {data[14:0], data[15]};

endmodule : barrel_shifter 