`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:28 09/24/2021 
// Design Name: 
// Module Name:    ques1 
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
module ques1(
    input a,
    input b,
    input c,
    output o
    );
wire w1,w2,w3;
and(w1,a,b);
and(w2,c,b);
and(w3,a,c);
or(o,w1,w2,w3);

endmodule
