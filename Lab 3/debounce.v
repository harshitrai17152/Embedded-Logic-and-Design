`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2018 10:57:39
// Design Name: 
// Module Name: debounce
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

// Debounce 

module debounce(
    input clk_deb,
    output deb_out,
    input pb_press
    );
    
    reg [2:0] ff;
    
    always @ (posedge clk_deb)
    begin
        ff[2]<=pb_press;
        ff[1]<=ff[2];
        ff[0]<=ff[1];
    end
    
    assign deb_out=ff[0]&ff[1]&ff[2];
    
endmodule
