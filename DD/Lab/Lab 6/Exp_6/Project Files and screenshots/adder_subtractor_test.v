`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:30:46 10/10/2021
// Design Name:   adder_subtractor
// Module Name:   D:/Exp_6/adder_subtractor_test.v
// Project Name:  Exp_6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder_subtractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder_subtractor_test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg M;

	// Outputs
	wire [3:0] Sum;
	wire Carry;
	wire Overflow;

	// Instantiate the Unit Under Test (UUT)
	adder_subtractor uut (
		.A(A), 
		.B(B), 
		.M(M), 
		.Sum(Sum), 
		.Carry(Carry), 
		.Overflow(Overflow)
	);

	initial begin
		// Initialize Inputs
		A = 2;
		B = 4;
		M = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Initialize Inputs
		A = -7;
		B = 4;
		M = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Initialize Inputs
		A = 7;
		B = 4;
		M = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Initialize Inputs
		A = 5;
		B = 4;
		M = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Initialize Inputs
		A = 6;
		B = 4;
		M = 1;

		// Wait 100 ns for global reset to finish
		#100;
		// Initialize Inputs
		A = -3;
		B = 4;
		M = 1;

		// Wait 100 ns for global reset to finish
		#100;
		// Initialize Inputs
		A = -6;
		B = 4;
		M = 1;

		// Wait 100 ns for global reset to finish
		#100;
		// Initialize Inputs
		A = -4;
		B = 4;
		M = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
        
$finish;
	end
      
endmodule

