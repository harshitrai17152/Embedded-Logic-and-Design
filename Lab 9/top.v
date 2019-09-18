`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2018 05:31:39 PM
// Design Name: 
// Module Name: gcd_top
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


module gcd_top(
    input clk,
    input clr,
    input go,
    input [3:0]x,
    input [3:0]y,
    output [3:0]gcd,
    output [7:0] cathode,
    output [3:0] anode
    );
    wire clk_190,clk_25;
    wire deb_clr,deb_go;
    wire div_go;
    wire [3:0]tens;
    wire [3:0]ones;
    
    clk_div #(19) c1(.clk(clk),.out_clk(clk_190));
    clk_wiz_0 c2(.clk_out1(clk_25),.clk_in1(clk));
    
    debounce db1(.clk_deb(clk_190),.pb_press(clr),.deb_out(deb_clr));
    debounce db2(.clk_deb(clk_190),.pb_press(go),.deb_out(deb_go));
    clk_pulse cp1(.clk(clk_25),.deb_in(deb_go),.deb_out(div_go));
    
    gcd g1(.clk(clk_25),.clr(deb_clr),.x(x),.y(y),.go(div_go),.gcd_o(gcd));
    bin2bcd b1(.clk(clk_190),.number(gcd),.ones(ones),.tens(tens));
    
    sevenseg_all(.clk(clk),.clr(deb_clr),.ones(ones),.tens(tens),.cathode(cathode),.anode(anode));
    
endmodule