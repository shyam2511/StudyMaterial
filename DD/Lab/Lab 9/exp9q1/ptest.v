`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:47:11 11/12/2021
// Design Name:   parity
// Module Name:   /home/ise/exp9q1/ptest.v
// Project Name:  exp9q1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: parity
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ptest;

	// Inputs
	reg [2:0] A;

	// Outputs
	wire F;

	// Instantiate the Unit Under Test (UUT)
	Parity uut (
		.A(A), 
		.F(F)
	);

	initial begin
		// Initialize Inputs
		A = 000;
	

		// Wait 100 ns for global reset to finish
		#10;
		A=001;
		#10;
		A=010;
		#10;
		A=011;
		#10;
		A=100;
		#10;
		A=101;
		#10;
		A=110;
		#10;
		A=111;
		#10;
        
		 $finish;
		// Add stimulus here

	end
      
endmodule

