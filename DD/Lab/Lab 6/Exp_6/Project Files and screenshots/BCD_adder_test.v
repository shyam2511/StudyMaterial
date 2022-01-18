`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:03:57 10/10/2021
// Design Name:   BCD_adder
// Module Name:   D:/Exp_6/BCD_adder_test.v
// Project Name:  Exp_6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BCD_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BCD_adder_test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [3:0] SUM;
	wire CARRY;

	// Instantiate the Unit Under Test (UUT)
	BCD_adder uut (
		.A(A), 
		.B(B), 
		.SUM(SUM), 
		.CARRY(CARRY)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Initialize Inputs
		A = 1;
		B = 1;

		// Wait 100 ns for global reset to finish
		#100;
		// Initialize Inputs
		A = 2;
		B = 2;

		// Wait 100 ns for global reset to finish
		#100;
		// Initialize Inputs
		A = 10;
		B = 10;

		// Wait 100 ns for global reset to finish
		#100;
		// Initialize Inputs
		A = 12;
		B = 12;

		// Wait 100 ns for global reset to finish
		#100;
		// Initialize Inputs
		A = 9;
		B = 9;

		// Wait 100 ns for global reset to finish
		#100;
        
$finish;

	end
      
endmodule

