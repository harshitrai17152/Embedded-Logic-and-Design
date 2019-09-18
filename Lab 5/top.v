`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2018 20:45:16
// Design Name: 
// Module Name: top
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


module top(
    input clk,
    input [3:0] a,
    input [3:0] b,
    output [7:0] cathode,
    output [3:0] anode
    );
    
    wire [7:0] num;
    wire [3:0] thousands;
    wire [3:0] hundreds;
    wire [3:0] tens;
    wire [3:0] ones;
    
    mul_4x4 fun1(.x(a),.y(b),.pro(num));
    bin2bcd fun2(.number(num),.thousands(thousands),.hundreds(hundreds),.tens(tens),.ones(ones));
    sevenseg fun3(.clk(clk),.ones(ones),.tens(tens),.hundreds(hundreds),.thousands(thousands),.anode(anode),.cathode(cathode));
    
endmodule
