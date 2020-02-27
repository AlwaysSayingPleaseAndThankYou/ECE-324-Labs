/* ECE 324 Lab 4 Arithmetic Logic Unit starter code
   01 Feb 2012 Dr. Lynch/WSUV: started as Lollapalooza code.
   28 Jan 2015 Tom Pritchard/WSUV: put sw[7:4] = "a" on the left.
   30 Jul 2015 Tom Pritchard/WSUV: changed lab to ALU on Nexys4DDR.
   06 Jan 2016 Tom Pritchard/WSUV: changed order of opcodes and digits.
   07 Jan 2018 Tom Pritchard/WSUV: reversed order of sseg's, made top segment bit 0.
   14 Jun 2018 Tom Pritchard/WSUV: converted to SystemVerilog.
   07 Sep 2018 Tom Pritchard/WSUV: added separate top level module.
   Feb - 11 - 2020: Gus Crowley and Bryson Forte lab completed
*/
  
module alu (
  input  logic [3:0] a, b  , // two 4-bit operands
  input  logic       Cin   , // carry in
  input  logic [3:0] opcode, // 4-bit opcode
  output logic       aGTb  , // 1 when a > b
  output logic       fEq0  , // 1 when f is zero
  output logic [7:0] f     , // 8 bit output
  output logic       Cout    // carry out
);


// **********************************
// Generate the ALU logic
// **********************************
  always@(*) 
  //if statements used to conver a broad array of situations at once
    if (opcode <= 3)
      Cout = f[4];
    else if(opcode >= 4 & opcode <= 11)
      Cout = Cin;
    else if(opcode == 12 | opcode == 14)
      Cout = a[3];
    else
      Cout = a[0];

      //extra verbose assign for no reason
      assign aGTb   = (a > b ) ? 1 : 0;
      //check if f = 0 and set flab
      assign fEq0   = (f==8'b00000000) ? 1 : 0;
      always@(*)
      case(opcode)
        //ALU logic
        4'b0000: f = a + b;
        4'b0001: f = a + b + Cin;
        4'b0010: f = a -b;
        4'b0011: f = a - b - Cin;
        4'b0100: f = a * b;
        4'b0101: f = a & b;
        4'b0110: f = a | b; //6
        4'b0111: f = ~a;
        4'b1000: f = a ^ b; //8
        4'b1001: f = a & ~b;
        4'b1010: f = {a[2:0], a[3]};
        4'b1011: f = {a[0], a[3:1]}; //b
        4'b1100: f = {a[2:0], Cin}; //c
        4'b1101: f = {Cin, a[3:1]}; //D
        4'b1110: f = {a[2:0], 1'b0}; //e
        4'b1111: f = {1'b0, a[3:1]}; //F

        endmodule
