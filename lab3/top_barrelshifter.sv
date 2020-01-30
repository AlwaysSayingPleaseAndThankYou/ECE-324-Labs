module top_barrel_shifter(
	input logic [15:0] SW, //input data
	input logic BTNR, //BTNR
	input logic BTNL, //BTNL
	input logic BNTC,
	output logic [0:15] LED //output
	);

	barrel_shifter board_shifter (
		.data(SW),
		.BTNC(BTNC),
		.BTNR(BTNL),
		.BTNL(BTNR),
		.shout(LED)
		);

endmodule : top_barrel_shifter
