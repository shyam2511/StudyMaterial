`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:15:42 09/24/2021
// Design Name:   ques2
// Module Name:   C:/Users/nvshy/Documents/xilinx/new/test2.v
// Project Name:  new
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ques2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test2;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg ctrl;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	ques2 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.ctrl(ctrl), 
		.o(o)
	);

	initial begin
	ctrl=0;
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

		ctrl=1;
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
$finish;

	end
      
endmodule

