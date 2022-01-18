`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:40:00 11/11/2021 
// Design Name: 
// Module Name:    parity_multiplexer 
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
module parity_multiplexer(
    input a0,a1,a2,
    output F
    );
multiplexer g1(~a2,a2,a2,~a2,a0,a1,F);

endmodule
