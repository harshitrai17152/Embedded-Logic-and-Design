`timescale 1ns / 1ps

module pulse(
    input clk,
    output deb_out,
    input deb_in
    );
    
    reg D1,D2,D3;
    always@(posedge clk)
    begin
        D1<=deb_in;
        D2<=D1;
        D3<=~D2; // inversion is done to generate a pulse
    end
    
    assign deb_out=D1&&D2&&D3;
    
endmodule