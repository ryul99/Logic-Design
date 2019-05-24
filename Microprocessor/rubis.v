`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:35:49 06/05/2018 
// Design Name: 
// Module Name:    rubis 
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
module rubis(
    input [3:0] bcd,
    output reg [6:0] seg
    );

	always @(bcd) begin
		case (bcd)
			4'd0: seg <= 7'b0000101;
			4'd1: seg <= 7'b0011100;
			4'd2: seg <= 7'b0011111;
			4'd3: seg <= 7'b0000100;
			4'd4: seg <= 7'b1011011;
			4'd5: seg <= 7'b1000000;
			4'd6: seg <= 7'b0000000;
		endcase
	end


endmodule
