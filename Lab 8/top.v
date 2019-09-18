`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2018 18:02:57
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
    input sw,
    input [1:0] press,      // input sequence
    input rst,
    output led,
    output [7:0] cathode,
    output [3:0] anode
    );
    
    wire clk_190,push_clk,pb_press;
    wire [2:0] ps1,ps2;
    wire led1,led2;
    
    reg led=0;
    reg [2:0] ps=3'b0;
    
    assign pb_press= press[0] | press[1];
       
    frq_div #(20) fun1(clk,clk_190);    
    pulse fun2(clk_190,push_clk,pb_press);
    overlap_10101 fun3(push_clk,press[1],rst,led1,ps1);
    non_overlap_10101 fun4(push_clk,press[1],rst,led2,ps2);
    
    always @ (posedge clk)
    begin
        if(sw==0)     // For overlapping   // 101 10101
        begin
            led<=led1;
            ps<=ps1;
        end
        else if(sw==1)    // For non-overlapping
        begin
            led<=led2;
            ps<=ps2;
        end
    end
    
    sevenseg fun5(.clk(clk),.clr(rst),.ones(ps),.tens(4'd5),.cathode(cathode),.anode(anode));        
        
endmodule
