`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:57:28 04/23/2018 
// Design Name: 
// Module Name:    Klingon_d 
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
module Klingon_d(
    input [3:0] in,
    output [6:0] out
    );
	 assign out = (in == 0) ? 7'b0111111 : (in == 1) ? 7'b0000001 : 
					  (in == 2) ? 7'b1000001 : (in == 3) ? 7'b1001001 :
					  (in == 4) ? 7'b1100010 : (in == 5) ? 7'b1011100 : 
					  (in == 6) ? 7'b1010010 : (in == 7) ? 7'b1100100 :
					  (in == 8) ? 7'b0110110 : (in == 9) ? 7'b1110110 : 7'b0000000;

endmodule
