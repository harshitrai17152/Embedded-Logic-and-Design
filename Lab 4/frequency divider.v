`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2018 09:06:46
// Design Name: 
// Module Name: dff
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

// 0-31 Counter

module dff(
    input clk,
    output reg [4:0] q=0,
    input rst
    );
   
// always @ (posedge clk | rst) // asynchronous clk    
always @ (posedge clk)  // synchronous clk
begin
    if(rst | q==31)
        q<=5'b0;
    else
        q<=q+1; 
end
    
endmodule
