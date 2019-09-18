`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2018 16:15:46
// Design Name: 
// Module Name: p_enc
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


module p_enc(
    input [3:0] A,
    output [1:0] Z
    );
    
    assign Z[0]=A[3] | A[2];    
    assign Z[1]=A[3] | (~A[2] & A[1]);
    
    
endmodule
