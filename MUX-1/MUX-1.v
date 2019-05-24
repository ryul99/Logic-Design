`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:34:53 04/07/2018 
// Design Name: 
// Module Name:    MUX-1 
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
module MUX_1(
    input [3:0] In,
    input [1:0] Sel,
    output Out
    );
	wire [3:0] decosel;
	wire [3:0] N_Sel;
	wire [3:0] semiout;
	
	not T0(N_Sel[0], Sel[0]);
	not T1(N_Sel[1], Sel[1]);
	
	and T2(decosel[0], N_Sel[0], N_Sel[1]);
	and T3(decosel[1], Sel[0], N_Sel[1]);
	and T4(decosel[2], N_Sel[0], Sel[1]);
	and T5(decosel[3], Sel[0], Sel[1]);
	
	and T6(semiout[0], decosel[0], In[0]);
	and T7(semiout[1], decosel[1], In[1]);
	and T8(semiout[2], decosel[2], In[2]);
	and T9(semiout[3], decosel[3], In[3]);
	
	or T10(Out, semiout[0], semiout[1], semiout[2], semiout[3]);
endmodule
