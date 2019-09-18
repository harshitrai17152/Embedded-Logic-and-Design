`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2018 06:28:47 PM
// Design Name: 
// Module Name: Controller
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


module Datapath(
    input clk,
    input clr,
    input xmsel,
    input ymsel,
    input xld,
    input yld,
    input gld,
    input [3:0]xin,
    input [3:0]yin,
    output reg [3:0]gcd,
    output reg eqflag,
    output reg ltflag
    );
   
    reg [3:0]x;
    reg [3:0]y;
    
    reg [3:0]x1;
    reg [3:0]y1;
    
    wire [3:0]xmy;
    wire [3:0]ymx;
    
    assign xmy=x-y;
    assign ymx=y-x;
    
    always@(*)
    begin
        if(x==y)
            eqflag=1;
        else
            eqflag=0;
    end
    
    always@(*)
    begin
        if(x<y)
            ltflag<=1;
        else
            ltflag<=0;
    end 
    
    always@(posedge clk or posedge clr)
    begin
    if(clr)
        gcd<=0;
    else if(x!=0 && y==0)
        gcd<=x;
    else if(y!=0 && x==0)
        gcd<=y;
    else if(x==0 && y==0)
        gcd<=0;
    else if(gld)
            gcd<=x;
    end  
   
    always@(*)
    begin
        if(xmsel==1)
            x1<=xin;
        else
            x1<=xmy;
    end
    
    always@(*)
        begin
            if(ymsel==1)
                y1<=yin;
            else
                y1<=ymx;
        end
    
    
    always@(posedge clk or posedge clr)
        begin
            if(yld)
                y=y1;
            else if(clr==1)
                y<=0;
        end
        
    always@(posedge clk or posedge clr)
                begin
                    if(xld)
                         x=x1;
                    else if(clr==1)
                         x<=0;
                end
    
endmodule