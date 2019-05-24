`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:12:27 04/07/2018 
// Design Name: 
// Module Name:    MUX_2 
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
module MUX_2(
    input [3:0] In,
    input [1:0] Sel,
    output Out
    );

	assign Out = (Sel == 2'b00) ? In[0] :
					 (Sel == 2'b01) ? In[1] :
					 (Sel == 2'b10) ? In[2] :
					 (Sel == 2'b11) ? In[3] :
					 1'b0;

endmodule
