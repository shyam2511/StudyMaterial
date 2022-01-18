`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:56:56 09/29/2021 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(
    input A,B,Cin,
    output S,C
    );
wire w1,w2,w3;

half_adder g1(A,B,w1,w2);
half_adder g2(w1,Cin,S,w3);
or g3(C,w2,w3);

endmodule
