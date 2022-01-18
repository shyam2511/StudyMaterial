`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:50:09 11/11/2021
// Design Name:   parity_multiplexer
// Module Name:   C:/Users/jainm/Desktop/DD_LAB/Experiment_9/exp/parity_multiplexer_test.v
// Project Name:  exp
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: parity_multiplexer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module parity_multiplexer_test;

	// Inputs
	reg a0;
	reg a1;
	reg a2;

	// Outputs
	wire F;

	// Instantiate the Unit Under Test (UUT)
	parity_multiplexer uut (
		.a0(a0), 
		.a1(a1), 
		.a2(a2), 
		.F(F)
	);

	initial begin
		// Initialize Inputs
		a0 = 0;
		a1 = 0;
		a2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		a0 = 1;
		a1 = 0;
		a2 = 0;
		#100;
		
		a0 = 0;
		a1 = 1;
		a2 = 0;
		#100;
		
		a0 = 1;
		a1 = 1;
		a2 = 0;
		#100;
		
		a0 = 0;
		a1 = 0;
		a2 = 1;
		#100;

		a0 = 1;
		a1 = 0;
		a2 = 1;
		#100;

		a0 = 0;
		a1 = 1;
		a2 = 1;
		#100;
		
		a0 = 1;
		a1 = 1;
		a2 = 1;
		#100;

	end
      
endmodule

