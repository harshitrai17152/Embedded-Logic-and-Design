`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2018 09:52:44
// Design Name: 
// Module Name: counter
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

// Frequency divider by a factor of N

module frq_div(
    input clk,
    output div_clk 
    );

parameter n=25;

reg [n-1:0] q=0;

always @ (posedge clk)
begin

q<=q+1;

end

assign div_clk=q[n-1];
     
endmodule
