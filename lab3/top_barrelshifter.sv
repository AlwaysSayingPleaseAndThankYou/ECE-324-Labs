module top_barrel_shifter(
	input logic [15:0] sw, //input data
	input logic BTNR, //BTNR
	input logic BTNL, //BTNL
	output logic [0:15] LED //output
	);

	barrel_shifter board_shifter (
		.data(sw),
		.BTNR(BTNR),
		.BTNL(BTNL),
		.shout(LED)
		);

endmodule : top_barrel_shifter
