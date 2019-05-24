`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:23:08 05/15/2018 
// Design Name: 
// Module Name:    counter_100 
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
module counter_100(
    input clk,
    input clr,
    input stop,
	 input toggle,
	 output reg [3:0] high_num,
    output reg[3:0] low_num
    );
	always @(posedge clk) begin
		if(clr) begin
			high_num <= 4'd0;
			low_num <= 4'd0;
		end
		else if(stop) begin
		end
		else if(!toggle) begin
			if(low_num == 4'd9) begin
				case (high_num)
				4'd0: high_num <= 4'd1;4'd1: high_num <= 4'd2;4'd2: high_num <= 4'd3;4'd3: high_num <= 4'd4;
				4'd4: high_num <= 4'd5;4'd5: high_num <= 4'd6;4'd6: high_num <= 4'd7;4'd7: high_num <= 4'd8;
				4'd8: high_num <= 4'd9;4'd9: high_num <= 4'd0;
				endcase
			end
				case (low_num)
				4'd0: low_num <= 4'd1;4'd1: low_num <= 4'd2;4'd2: low_num <= 4'd3;4'd3: low_num <= 4'd4;
				4'd4: low_num <= 4'd5;4'd5: low_num <= 4'd6;4'd6: low_num <= 4'd7;4'd7: low_num <= 4'd8;
				4'd8: low_num <= 4'd9;4'd9: low_num <= 4'd0;
				endcase
		end
		else begin
			if(low_num == 4'd0) begin
				case (high_num)
				4'd0: high_num <= 4'd9;4'd1: high_num <= 4'd0;4'd2: high_num <= 4'd1;4'd3: high_num <= 4'd2;
				4'd4: high_num <= 4'd3;4'd5: high_num <= 4'd4;4'd6: high_num <= 4'd5;4'd7: high_num <= 4'd6;
				4'd8: high_num <= 4'd7;4'd9: high_num <= 4'd8;
				endcase
			end
				case (low_num)
				4'd0: low_num <= 4'd9;4'd1: low_num <= 4'd0;4'd2: low_num <= 4'd1;4'd3: low_num <= 4'd2;
				4'd4: low_num <= 4'd3;4'd5: low_num <= 4'd4;4'd6: low_num <= 4'd5;4'd7: low_num <= 4'd6;
				4'd8: low_num <= 4'd7;4'd9: low_num <= 4'd8;
				endcase
		end
	end

endmodule
