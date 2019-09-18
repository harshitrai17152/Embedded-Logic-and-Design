`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2018 09:24:18
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
    input ori_clk,
    input rst,
    output reg [4:0] q=0,
    input [1:0] sel_line
    );
    
wire [4:0] out1;
wire [4:0] out2;
wire [4:0] out3;
wire [4:0] out4;

wire f1,f2,f3;
wire clk,deb_out;

frq_one fun1(.clk(ori_clk),.out_clk(clk));

debounce fun2(.clk_deb(clk),.deb_out(deb_out),.pb_press(rst));
dff fun3(.clk(clk),.rst(deb_out),.q(out1));

counter #(1) fun4(.clk(clk),.div_clk(f1));
dff fun5(.clk(f1),.rst(deb_out),.q(out2));

counter #(2) fun6(.clk(clk),.div_clk(f2));
dff fun7(.clk(f2),.rst(deb_out),.q(out3));

counter #(3) fun8(.clk(clk),.div_clk(f3));
dff fun9(.clk(f3),.rst(deb_out),.q(out4));

always @ (posedge clk)
begin
    if(sel_line==2'b00)
    begin
        q<=out1;
    end
    else if(sel_line==2'b01)
    begin
        q<=out2;
         end
    else if(sel_line==2'b10)
    begin
        q<=out3;
    end
    else if(sel_line==2'b11)
    begin
        q<=out4;
    end
end
    
endmodule