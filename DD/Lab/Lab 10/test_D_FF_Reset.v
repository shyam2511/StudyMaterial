`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:11:06 11/28/2021
// Design Name:   D_FF_Reset
// Module Name:   C:/Users/Prithvi/Documents/BITS/2nd Year/Sem 1/CS F215 Digital Design/Lab10/Lab10_2/test_D_FF_Reset.v
// Project Name:  Lab10_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_FF_Reset
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_D_FF_Reset;

	// Inputs
	reg D;
	reg CLK;
	reg Reset;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	D_FF_Reset uut (
		.D(D), 
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
		D = 0;
		repeat(6)
		#225 D = ~D;
		
	end
	
	initial begin
		Reset = 0;
		repeat(2)
		#600 Reset = ~Reset;
	end
      
endmodule

