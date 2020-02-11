/* ECE 324 Lab 4 Arithmetic Logic Unit starter code
   01 Feb 2012 Dr. Lynch/WSUV: started as Lollapalooza code.
   28 Jan 2015 Tom Pritchard/WSUV: put sw[7:4] = "a" on the left.
   30 Jul 2015 Tom Pritchard/WSUV: changed lab to ALU on Nexys4DDR.
   06 Jan 2016 Tom Pritchard/WSUV: changed order of opcodes and digits.
   07 Jan 2018 Tom Pritchard/WSUV: reversed order of sseg's, made top segment bit 0.
   14 Jun 2018 Tom Pritchard/WSUV: converted to SystemVerilog.
   07 Sep 2018 Tom Pritchard/WSUV: added separate top level module.
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
// The following are temporary assign statements; you need to change all of these.

  assign f[7:0] = {a[3:0], b[3:0]};
  assign Cout   = Cin;
  assign aGTb   = Cin;
  assign fEq0   = Cin;
  always@(*) begin
    case(opcode):
      4'b0110: f = a | b;
      4'b1000: f = a ^ b;
      4'b1011: a = {a[0],a[3:1]}
      4'b1101: a = {Cin, a[3:1]}
      4'b1111: a = {1'b0, a[3:1]}
    end
  endmodule