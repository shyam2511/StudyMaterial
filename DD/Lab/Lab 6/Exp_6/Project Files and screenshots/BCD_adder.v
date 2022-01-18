`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:44:23 10/10/2021 
// Design Name: 
// Module Name:    BCD_adder 
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
module BCD_adder(
    input [3:0] A,
    input [3:0] B,
    output [3:0] SUM,
    output CARRY
    );

wire w1, w2, w3;
wire [3:0]C;
wire [3:0] Z;
assign{w1,Z} = A+B;
assign w2 = (Z[3]&Z[2])|(Z[1]&Z[3]);
assign CARRY = w1|w2;
assign C = {1'b0, CARRY,CARRY, 1'b0};
assign{w3,SUM} = C+Z;
endmodule
