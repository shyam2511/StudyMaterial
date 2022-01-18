`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:59:38 11/28/2021 
// Design Name: 
// Module Name:    Q2_T_FlipFlop 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Q2_T_FlipFlop(
    input T,
    input CLK,
    input Reset,
    output Q
    );
	wire w1;
	assign w1 = T^Q;
	D_FF_Reset d(w1, CLK, Reset, Q);

endmodule
