`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:21:48 11/12/2021 
// Design Name: 
// Module Name:    Parity 
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
module Parity(
    input [2:0] A,
    output F
    );

    wire [7:0] w1;
    assign w1 = 8'b0110_1001;
    multiplexer g1(w1,A,F);


endmodule
