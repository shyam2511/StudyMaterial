`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:10:49 09/24/2021 
// Design Name: 
// Module Name:    ques2 
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
module ques2(
    input a,
    input b,
    input c,
    input ctrl,
    output o
    );
wire w1,w2;
xor(w1,a,b);
xor(w2,w1,c);
xor(o,w2,ctrl);

endmodule
