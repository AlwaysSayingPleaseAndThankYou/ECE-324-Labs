module barrel_shifter(
	input logic [15:0] data,
	input logic BTNR,
	input logic BTNL,
	input logic BTNC,
	output logic [15:0] shout
	);

	//assign shout[15:0] = BTNR ? {data[0], data[15:1]} : (BTNL
	 //? {data[14:0], data[15]}: data[15:0]);

	//ec
	assign shout[15:0] =
	 (BTNR & BTNC) ? {data[1:0], data[15:2]} :
	 (BTNL & BTNC) ? {data[13:0], data[15:14]}:
	 BTNR ? {data[0], data[15:1]}:
	 BTNL ? {data[14:0], data[15]} : data[15:0];

endmodule : barrel_shifter 
