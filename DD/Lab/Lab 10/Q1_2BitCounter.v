`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:25:42 11/28/2021 
// Design Name: 
// Module Name:    Q1_2BitCounter 
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
module Q1_2BitCounter(
    input CLK,
    input Reset,
    output Qa,
    output Qb
    );
	wire w1;
	assign w1 = Qa^Qb;
	
	D_FF_Reset da(~Qa, CLK, Reset, Qa);
	D_FF_Reset db(w1, CLK, Reset, Qb);

endmodule
