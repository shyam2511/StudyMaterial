`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:32:25 11/28/2021
// Design Name:   Q1_2BitCounter
// Module Name:   C:/Users/Prithvi/Documents/BITS/2nd Year/Sem 1/CS F215 Digital Design/Lab10/Lab10_2/test_Q1_2BitCounter.v
// Project Name:  Lab10_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Q1_2BitCounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_Q1_2BitCounter;

	// Inputs
	reg CLK;
	reg Reset;

	// Outputs
	wire Qa;
	wire Qb;

	// Instantiate the Unit Under Test (UUT)
	Q1_2BitCounter uut (
		.CLK(CLK), 
		.Reset(Reset), 
		.Qa(Qa), 
		.Qb(Qb)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		repeat(9)
		#100 CLK = ~CLK;
	end
	
	initial begin
		// Initialize Inputs
		Reset = 1;
		repeat(1)
		#20 Reset = ~Reset;
	end
      
endmodule

