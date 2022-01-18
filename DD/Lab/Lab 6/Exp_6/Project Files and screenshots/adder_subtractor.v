`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:19:18 10/10/2021 
// Design Name: 
// Module Name:    adder_subtractor 
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
module adder_subtractor(
    input [3:0] A,
    input [3:0] B,
	 input M,
    output [3:0] Sum,
    output Carry,
    output Overflow
    );

wire [3:0] X,Y,Z;
assign X = A&7;
assign Y = (B^{M,M,M,M})&7;
assign Z = X + Y + M;
assign {Carry, Sum} = A+(B^{M,M,M,M})+M;
assign Overflow = Carry ^ Z[3];
endmodule
