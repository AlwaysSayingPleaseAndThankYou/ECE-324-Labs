//////////////////////////////////////////////////////////////////////////////////
// Company: WSU Vancouver
// Engineer: Pritchard
// 
// Create Date:    13:11:14 01/18/2012 
// Design Name: 
// Module Name:  fpga_top_Lab2 
// Project Name:
//
// Revision: Gus Crowley and Bryson Forte
// Revision 0.01 - File Created
// Additional Comments: lab completed and checked off
//
//////////////////////////////////////////////////////////////////////////////////
//changes made here and fpga_top to allow for existing switches and LEDs
module fpga_top_Lab2(
    input logic [3:0] SW,
    input logic BTNC,
    output logic [0:15] LED
);

//instatiates our 4-16 decoder
FourToSixteenDecoder FT16D0 (
	.w(SW), 
	.En(BTNC), 
	.y(LED)
);


endmodule
