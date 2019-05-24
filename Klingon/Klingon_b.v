`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:47:19 04/23/2018 
// Design Name: 
// Module Name:    Klingon_b 
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
module Klingon_b(
    input [3:0] in,
    output [6:0] out
    );
	 
	reg [6:0] out1;
	
	assign out = out1;
	
	always@(in)
		begin
			case(in)
				0 : out1 = 7'b0111111;
				1 : out1 = 7'b0000001;
				2 : out1 = 7'b1000001;
				3 : out1 = 7'b1001001;
				4 : out1 = 7'b1100010;
				5 : out1 = 7'b1011100;
				6 : out1 = 7'b1010010;
				7 : out1 = 7'b1100100;
				8 : out1 = 7'b0110110;
				9 : out1 = 7'b1110110;
				default : out1 = 7'b0000000;
			endcase
		end

endmodule
