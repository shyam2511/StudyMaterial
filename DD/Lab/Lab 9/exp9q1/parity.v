`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:46:26 11/12/2021 
// Design Name: 
// Module Name:    parity 
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
module parity(
    input [2:0] A,
    output F
    );

     wire [7:0] w1;
    decoder g1(A, w1);
    assign F =
    (A==3'b000)?w1[0]:
    (A==3'b001)?~w1[1]:
    (A==3'b010)?~w1[2]:
    (A==3'b011)?w1[3]:
    (A==3'b100)?~w1[4]:
    (A==3'b101)?w1[5]:
    (A==3'b110)?w1[6]:
    (A==3'b111)?~w1[7]:
    0;
endmodule
