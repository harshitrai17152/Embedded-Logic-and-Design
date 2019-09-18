`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2018 15:59:42
// Design Name: 
// Module Name: mul_4x4
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


module mul_4x4(
    input [3:0] x,
    input [3:0] y,
    output [7:0] pro
    );
    
    wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12;
    wire sum1,sum2,sum3,sum4,sum5,sum6;
    
    assign pro[0]=x[0] & y[0];
    
    full_adder fun1(.a(y[0]&x[1]),.b(y[1]&x[0]),.c(1'b0),.sum(pro[1]),.carry(c1));
    
    full_adder fun2(.a(y[0]&x[2]),.b(y[1]&x[1]),.c(c1),.sum(sum1),.carry(c2));
    full_adder fun3(.a(y[2]&x[0]),.b(sum1),.c(1'b0),.sum(pro[2]),.carry(c3));
    
    full_adder fun4(.a(y[0]&x[3]),.b(y[1]&x[2]),.c(c2),.sum(sum2),.carry(c4));
    full_adder fun5(.a(c3),.b(y[2]&x[1]),.c(sum2),.sum(sum3),.carry(c5));
    full_adder fun6(.a(y[3]&x[0]),.b(1'b0),.c(sum3),.sum(pro[3]),.carry(c6));
    
    full_adder fun7(.a(y[1]&x[3]),.b(1'b0),.c(c4),.sum(sum4),.carry(c7));
    full_adder fun8(.a(sum4),.b(y[2]&x[2]),.c(c5),.sum(sum5),.carry(c8));
    full_adder fun9(.a(y[3]&x[1]),.b(sum5),.c(c6),.sum(pro[4]),.carry(c9));
    
    full_adder fun10(.a(y[2]&x[3]),.b(c8),.c(c7),.sum(sum6),.carry(c10));
    full_adder fun11(.a(y[3]&x[2]),.b(sum6),.c(c9),.sum(pro[5]),.carry(c11));
    
    full_adder fun12(.a(y[3]&x[3]),.b(c11),.c(c10),.sum(pro[6]),.carry(c12));
    
    assign pro[7]=c12;
 
 
endmodule
