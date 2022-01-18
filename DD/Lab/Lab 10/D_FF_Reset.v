`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:23:45 11/28/2021 
// Design Name: 
// Module Name:    D_FF_Reset 
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
module D_FF_Reset(
    input D,
    input CLK,
    input Reset,
    output reg Q
    );
	always @(posedge CLK, posedge Reset)
	begin
	if(Reset == 1)
		Q <= 1'b0;
	else
		Q <= D;
	end

endmodule
