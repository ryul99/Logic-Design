`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:39:48 04/10/2018 
// Design Name: 
// Module Name:    BCDto7_dataflow 
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
module BCDto7_dataflow(
    input [3:0] in,
    output [6:0] out
    );
	 
	 assign out = (in == 0) ? 7'b0111111 : (in == 1) ? 7'b0000110 : 
					  (in == 2) ? 7'b1011011 : (in == 3) ? 7'b1001111 :
					  (in == 4) ? 7'b1100110 : (in == 5) ? 7'b1101101 : 
					  (in == 6) ? 7'b1111100 : (in == 7) ? 7'b0100111 :
					  (in == 8) ? 7'b1111111 : (in == 9) ? 7'b1100111 : 7'b0000000;
 
endmodule
