`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2018 09:40:58
// Design Name: 
// Module Name: mealy_11011
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


module non_overlap_10101(
    input fsm_clk,
    input din,
    input rst,
    output reg seq_det=0,
    output reg [2:0] ps=0   // present state
    );
   
    reg [2:0] ns;   // next state
    parameter [2:0] s0=3'd0,s1=3'd1,s2=3'd2,s3=3'd3,s4=3'd4,s5=3'd5,s6=3'd6,s7=3'd7;
    
    always @ (posedge fsm_clk or posedge rst)  // this is for present state
    begin
        if(rst==1)
            ps<=s0;
        else
            ps<=ns;
    end
    
    always @ (*)    // for next state
    begin
        case(ps)
            s0: if(din==1)
                    ns=s1;
                else
                    ns=s0;
            s1: if(din==0)
                    ns=s2;
                else
                    ns=s1;
            s2: if(din==0)
                    ns=s0;
                else
                    ns=s3;          
            s3: if(din==0)
                    ns=s4;
                else
                    ns=s0;
            s4: if(din==1)
                    ns=s5;
                else
                    ns=s0;
            s5: ns=s0;
         endcase    
    end
    
always @ (posedge fsm_clk or posedge rst)  // this is for output
begin
    if(rst==1)
        seq_det<=0;
    else if(ps==s4 && din==1)
        seq_det<=1;
    else
        seq_det<=0;
end    
    
    
endmodule
