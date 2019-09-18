`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2018 13:22:11
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
    input rst,
    output [7:0] cathode,
    output [3:0] anode,
    output [6:0] ssd, //JB[3:0] JC[2:0]
    output ssdcat   //JC[3]
    );
   
    wire deb_out,clk_20,clk_1;
    wire [5:0] num;
    
    frq_div #(20) fun1(clk,clk_20);
    frq_one fun2(clk,clk_1);
    
    debounce fun3(clk_20,deb_out,rst); 
    up_counter fun4(clk_1,num,deb_out);
    sevenseg fun5(clk,num[2],num[3],num[4],num[5],cathode,anode);
    ssd fun6(clk,num[1],num[0],ssd,ssdcat); 
    
endmodule
