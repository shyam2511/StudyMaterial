`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:35:23 10/10/2021
// Design Name:   four_bit_adder
// Module Name:   D:/Exp_6/four_bit_adder_test.v
// Project Name:  Exp_6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_bit_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module four_bit_adder_test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [3:0] SUM;
	wire CARRY;

	// Instantiate the Unit Under Test (UUT)
	four_bit_adder uut (
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
		A = 2;
		B = 3;

		// Wait 100 ns for global reset to finish
		#100;
		// Initialize Inputs
		A = 6;
		B = 8;

		// Wait 100 ns for global reset to finish
		#100;
		// Initialize Inputs
		A = 4'b0111;
		B = 4'b0110;

		// Wait 100 ns for global reset to finish
		#100;
		// Initialize Inputs
		A = 4'b1110;
		B = 3;

		// Wait 100 ns for global reset to finish
		#100;// Initialize Inputs
		A = 13;
		B = 5;

		// Wait 100 ns for global reset to finish
		#100;
  
 $finish;

	end
      
endmodule

