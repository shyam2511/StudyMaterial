`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:53:20 09/29/2021
// Design Name:   half_adder
// Module Name:   E:/Y_II_SEM_I/DD_Lab/Exp_5/Adder_Circuits/half_adder_test.v
// Project Name:  Adder_Circuits
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: half_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module half_adder_test;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire S;
	wire C;

	// Instantiate the Unit Under Test (UUT)
	half_adder uut (
		.A(A), 
		.B(B), 
		.S(S), 
		.C(C)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#10;
      
		A = 1;
		B = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		A = 0;
		B = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		A = 1;
		B = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		$finish;
		// Add stimulus here

	end
      
endmodule

