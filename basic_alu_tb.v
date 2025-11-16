// Testbench for the ALU Module

`timescale 1ns/1ps
`include "basic_alu.v"

module basic_alu_tb;

reg [3:0] A, B;    // inputs
reg [2:0] op;      // operations 
wire [3:0] alu_out;  //output

//instantiate the AND GATE module
basic_alu dut(.A(A), .B(B), .op(op), .alu_out(alu_out));

//clock generation
reg clk;
always #5 clk = ~ clk;

//testing the input values
initial begin

$dumpfile("basic_alu_tb.vcd"); //create a cvd file
$dumpvars(0, basic_alu_tb);

// sample input
  A = 3'b0100; // binary value for 4
  B = 3'b0011; // binary value for 3

  op = 000;  // Addition
  #10 $display("ADD %b", alu_out);

  op = 001;  // Subtraction
  #10 $display("SUBTRACT %b", alu_out);

  op = 010;  // AND
  #10 $display("AND %b", alu_out);

  op = 011;  // OR
  #10 $display("OR %b", alu_out);

  op = 100;  // NOT A
  #10 $display("~A %b", alu_out);

  op = 101;  // NOT B
  #10 $display("~B %b", alu_out);

  op = 110;  // XOR
  #10 $display("XOR %b", alu_out);

  op = 111;  // XNOR
  #10 $display("XNOR %b", alu_out);

$finish; // end simulation

end

endmodule