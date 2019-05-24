`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:14:24 05/01/2018 
// Design Name: 
// Module Name:    oscillator 
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
module oscillator(
    input En,
    output Feedback
    );
	 
	 wire tmp;
	 and(tmp, En, Feedback);
	 assign #5 Feedback = ~tmp;


endmodule
