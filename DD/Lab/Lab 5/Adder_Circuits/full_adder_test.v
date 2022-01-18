`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:03:35 09/29/2021
// Design Name:   full_adder
// Module Name:   E:/Y_II_SEM_I/DD_Lab/Exp_5/Adder_Circuits/full_adder_test.v
// Project Name:  Adder_Circuits
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module full_adder_test;

	// Inputs
	reg A;
	reg B;
	reg Cin;

	// Outputs
	wire S;
	wire C;

	// Instantiate the Unit Under Test (UUT)
	full_adder uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.S(S), 
		.C(C)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#10;
       
		A = 0;
		B = 1;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		A = 1;
		B = 0;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		A = 1;
		B = 1;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		A = 0;
		B = 0;
		Cin = 1;

		// Wait 100 ns for global reset to finish
		#10;
       
		A = 0;
		B = 1;
		Cin = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		A = 1;
		B = 0;
		Cin = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		A = 1;
		B = 1;
		Cin = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		$finish;
		// Add stimulus here

	end
      
endmodule

