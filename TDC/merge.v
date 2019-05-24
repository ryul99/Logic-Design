`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:23:50 05/15/2018 
// Design Name: 
// Module Name:    merge 
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
module merge(
    input clk,
    input clr,
	 input toggle,
    input stop,
    output [6:0] high,
    output [6:0] low
    );
	
	wire cl;
	wire[3:0] high1;
	wire[3:0] low1;
	
	clkdiv c(.clkin(clk), .clr(0), .clkout(cl));
	counter_100 ct(.clk(cl), .clr(clr), .toggle(toggle), .stop(stop), .high_num(high1), .low_num(low1));
	bcd_decode d1(.bcd(low1), .seg(low));
	bcd_decode d2(.bcd(high1), .seg(high));

endmodule
