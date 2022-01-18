`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:00:43 09/24/2021
// Design Name:   ques1
// Module Name:   C:/Users/nvshy/Documents/xilinx/new/test.v
// Project Name:  new
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ques1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	ques1 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;

		// Wait 100 ns for global reset to finish
		#10;
		a = 1;
		b = 0;
		c = 0;

		// Wait 100 ns for global reset to finish
		#10;
		a = 0;
		b = 1;
		c = 0;

		// Wait 100 ns for global reset to finish
		#10;
		a = 0;
		b = 1;
		c = 1;

		// Wait 100 ns for global reset to finish
		#10;
		a = 0;
		b = 0;
		c = 1;

		// Wait 100 ns for global reset to finish
		#10;
		a = 1;
		b = 1;
		c = 0;

		// Wait 100 ns for global reset to finish
		#10;
		a = 1;
		b = 0;
		c = 1;

		// Wait 100 ns for global reset to finish
		#10;
		a = 1;
		b = 1;
		c = 1;
		#10;

		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here
$finish;
	end
      
endmodule

