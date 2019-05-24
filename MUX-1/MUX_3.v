`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:29:10 04/07/2018 
// Design Name: 
// Module Name:    MUX_3 
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
module MUX_3(
    input [3:0] In,
    input [1:0] Sel,
    output Out
    );
	
	reg out;
	assign Out = out;
	
	always@(In or Sel)
		begin
			case(Sel)
				2'b00 : out = In[0];
				2'b01 : out = In[1];
				2'b10 : out = In[2];
				2'b11 : out = In[3];
			endcase
		end
endmodule
