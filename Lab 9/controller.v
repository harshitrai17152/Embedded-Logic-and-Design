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


module Controller(
    input clr,
    input clk,
    input go,
    input eqflag,
    input ltflag,
    output reg xmsel=0,
    output reg ymsel=0,
    output reg xld=0,
    output reg yld=0,
    output reg gld=0
    );
    reg [2:0]ns=0;
    reg [2:0]ps=0;
    parameter start=3'd0,inp=3'd1,test1=3'd2,test2=3'd3,update1=3'd4,update2=3'd5,done=3'd6;
    
     always @(posedge clk or posedge clr) //for present state
       begin
       if(clr)ps<=start;
       else ps<=ns;
       end
       
     always@(*)
     begin
        case(ps)
            start:
            begin
            xmsel<=0;
            ymsel<=0;
            xld<=0;
            yld<=0;
            gld<=0;
            if(go) ns<=inp;
            else if(~go) ns<=start;
            end
            
            inp:
            begin
                xmsel<=1;
                ymsel<=1;
                xld<=1;
                yld<=1;
                ns<=test1;
            end
            
                        
            test1:
            begin
            xld<=0;
            yld<=0;
            if(~eqflag) ns<=test2;
            else if(eqflag) ns<=done;
            end
            
            test2:
            begin
            if(ltflag) ns<=update1;
            else if(~ltflag) ns<=update2;
            end
            
            update1:
            begin
            yld<=1;
            ymsel<=0;
            ns<=test1;
            end
            
            update2:
            begin
            xld<=1;
            xmsel<=0;
            ns<=test1;
            end
            
            
            done:
            begin
            ns<=start;
            gld<=1;
            end
     default: ns<=start;
     endcase
     end        
     

endmodule