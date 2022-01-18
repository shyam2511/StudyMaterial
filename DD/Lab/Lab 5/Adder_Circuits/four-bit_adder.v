`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:02:46 09/29/2021 
// Design Name: 
// Module Name:    four-bit_adder 
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
module fourbit_adder(
    input A0,A1,A2,A3,
    input B0,B1,B2,B3,
    input Cin,
    output S0,S1,S2,S3,
    output Cout
    );
wire w1,w2,w3;
full_adder g1(A0,B0,Cin,S0,w1);
full_adder g2(A1,B1,w1,S1,w2);
full_adder g3(A2,B2,w2,S2,w3);
full_adder g4(A3,B3,w3,S3,Cout);

endmodule
