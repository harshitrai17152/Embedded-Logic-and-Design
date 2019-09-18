`timescale 1ns / 1ps

module ssd(
input clk,
input ones,
input tens,
output[6:0] ssd,
output reg ssdcat
 );
 
    reg[17:0] count;
    always @(posedge clk)
    begin
        count<=count+1;
    end
    
    reg[6:0] sseg_temp;
    //reg[3:0] antemp=4'b1110;
    always @(*)
    begin
    case(count[17])
    1'b0:
    begin
    case(ones)
        1'b0 : sseg_temp = 7'b0111111; //to display 0
        1'b1 : sseg_temp = 7'b0000110; //to display 1 //1111001
        default : sseg_temp = 7'b1000000; //dash
                 
        endcase
        ssdcat=1'b1;
        end
       1'b1:
       begin
       case(tens)
            1'b0 : sseg_temp = 7'b0111111; //to display 0
            1'b1 : sseg_temp = 7'b0000110; //to display 1 //1111001
            default : sseg_temp = 7'b1000000; //dash
               endcase
               ssdcat=1'b0;
       end
       endcase 
    end
    assign ssd=sseg_temp;
endmodule