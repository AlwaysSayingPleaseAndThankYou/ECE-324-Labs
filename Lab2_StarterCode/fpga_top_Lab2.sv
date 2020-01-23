//////////////////////////////////////////////////////////////////////////////////
// Company: WSU Vancouver
// Engineer: Pritchard
// 
// Create Date:    13:11:14 01/18/2012 
// Design Name: 
// Module Name:  fpga_top_Lab2 
// Project Name:
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module fpga_top_Lab2(
    input logic [1:0] SW,
    input logic BTNC,
    output logic [0:3] LED
);

TwoToFourDecoder TTFD0 (
	.w(SW), 
	.En(BTNC), 
	.y(LED)
);
//instantiating four to sixteen decoder
//TODO: what on earth is this asking us to do??
//FourToSixteenDecoder myDecode (
	//.w())


endmodule
