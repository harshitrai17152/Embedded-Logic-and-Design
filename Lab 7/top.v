`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2018 21:24:27
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
    input pb_read,
    output [1:0] led,
    output [7:0] cathode,
    output [3:0] anode
    );
    
    wire [3:0] thousands,hundreds,tens,ones;
    wire [3:0] dout1;
    reg [3:0] add=0;
    wire [4:0] dout2;
    reg [4:0] sum=0;
    reg i=0;
    reg [3:0] cntr=0; 
    wire clk_190;
    wire deb_read,deb_rst;
    wire [4:0] fifo_out;
    
    frq_div #(19) fun1(clk,clk_190);
    
    pulse fun2(clk_190,deb_read,pb_read);
    pulse fun3(clk_190,deb_rst,rst);
    
    blk_mem_gen_1 fun5(.clka(clk),.addra(add),.douta(dout1));   // 0 1 2  3  4  5  6  7 8 9
    blk_mem_gen_2 fun6(.clka(clk),.addra(add),.douta(dout2));  //  7 0 17 18 7  8  19 0 0 0
                                                              //   7 1 19 21 11 13 25 7 8 9
       
    always @ (posedge clk)
    begin
        if(add<4'd12)
        begin
            sum<=dout1+dout2;
            i<=1;
            if(cntr<4'd3)
                add<=add;
            else
                add<=add+1;
        end    
        else
        begin
            i<=0;
            cntr<=0;
        end    
            
        cntr<=cntr+1;
        
    end
    
   fifo_generator fun7(.rst(deb_rst),
       .wr_clk(clk),.rd_clk(clk_190),
       .din(sum),.wr_en(i),.rd_en(deb_read),.dout(fifo_out),.full(led[1]),.empty(led[0]));
      
    bin2bcd fun8(fifo_out,thousands,hundreds,tens,ones);
    sevenseg fun9(clk,deb_rst,ones,tens,hundreds,thousands,cathode,anode);
      
endmodule
