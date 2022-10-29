`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2022 06:50:04 AM
// Design Name: 
// Module Name: Testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Testbench;
// input registers
reg A;
reg B;
//output registers
wire S,C;
 // Instantiate the Unit Under Test (UUT)
  HalfAdder uut (A,B,C,S);
  
  // The code below tests the half-adder by manually changing the values of each input register
  initial begin

    // Set the both input registers as 0 as a default
    A = 0;
    B = 0;

    // For five seconds, set one register to 1 while leaving the other as its default 0
    #5 A = 0; B = 1;

    // For five seconds, set the other register to 1 while flipping the other to its default 0
    #5 A = 1; B = 0;

    // For five seconds, set both registers to 1
    #5 A = 1; B = 1;
  end

  initial #25 $finish; // The test should run for a total of 25 nanoseconds
endmodule

