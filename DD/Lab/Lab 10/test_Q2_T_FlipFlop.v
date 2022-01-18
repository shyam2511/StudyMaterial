`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:00:43 11/28/2021
// Design Name:   Q2_T_FlipFlop
// Module Name:   C:/Users/Prithvi/Documents/BITS/2nd Year/Sem 1/CS F215 Digital Design/Lab10/Lab10_2/test_Q2_T_FlipFlop.v
// Project Name:  Lab10_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Q2_T_FlipFlop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_Q2_T_FlipFlop;

	// Inputs
	reg T;
	reg CLK;
	reg Reset;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	Q2_T_FlipFlop uut (
		.T(T), 
		.CLK(CLK), 
		.Reset(Reset), 
		.Q(Q)
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
	
	initial begin
		// Initialize Inputs
		T = 0;
		repeat(6)
		#200 T = ~T;
	end
      
endmodule

