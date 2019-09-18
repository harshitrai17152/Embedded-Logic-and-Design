`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2018 10:06:46
// Design Name: 
// Module Name: frq_one
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module frq_one(
input clk,
output reg out_clk=0
);

reg [26:0] count=0;

always @ (posedge clk)
begin	
	if(count==49999999)
	begin
		count<=0;
		out_clk<=~out_clk;
	end
	else
	begin
	   count<=count+1;
	end
end

endmodule