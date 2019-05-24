`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:47:40 04/10/2018 
// Design Name: 
// Module Name:    BCDto7_behavioral 
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
module BCDto7_behavioral(
    input [3:0] in,
    output [6:0] out
    );
	
	reg [6:0] out1;
	
	assign out = out1;
	
	always@(in)
		begin
			case(in)
				0 : out1 = 7'b0111111;
				1 : out1 = 7'b0000110;
				2 : out1 = 7'b1011011;
				3 : out1 = 7'b1001111;
				4 : out1 = 7'b1100110;
				5 : out1 = 7'b1101101;
				6 : out1 = 7'b1111100;
				7 : out1 = 7'b0100111;
				8 : out1 = 7'b1111111;
				9 : out1 = 7'b1100111;
				default : out1 = 7'b0000000;
			endcase
		end

endmodule
