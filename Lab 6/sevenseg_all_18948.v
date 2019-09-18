`timescale 1ns / 1ps
module sevenseg(
    input clk,
    input ones,
    input tens,
    input hundreds,
    input thousands,    
    output [7:0] cathode,
    output [3:0] anode
    );
     reg [6:0]sseg_temp;
     reg [3:0]an_temp = 4'b1110 ;
     reg [17:0] count; //the 18 bit counter which allows us to multiplex at 1000Hz
     
     always @ (posedge clk)
      begin
        count <= count + 1;
      end

	 //code for display multiple digits (do not initialize an_temp in line 41 and comment out lines 44 to 60)
     always @ (*)
      begin
       case(count[17:16]) //using only the 2 MSB's of the counter
         
        2'b00 :  //When the 2 MSB's are 00 enable the fourth display
         begin
          case(ones)
                1'b0 : sseg_temp = 7'b0000001; //to display 0
                1'b1 : sseg_temp = 7'b1001111; //to display 1
                default : sseg_temp = 7'b1111110; //dash
           endcase
          
          //sseg = ones;
          an_temp = 4'b1110;
         end
         
        2'b01:  //When the 2 MSB's are 01 enable the third display
         begin
             case(tens)
                1'b0 : sseg_temp = 7'b0000001; //to display 0
                1'b1 : sseg_temp = 7'b1001111; //to display 1
                default : sseg_temp = 7'b1111110; //dash
             endcase
            
          //sseg = tens;             
          an_temp = 4'b1101;
         end
         
        2'b10:  //When the 2 MSB's are 10 enable the second display
         begin
          case(hundreds)
               1'b0 : sseg_temp = 7'b0000001; //to display 0
               1'b1 : sseg_temp = 7'b1001111; //to display 1
           endcase
          
          //sseg = hundreds;
          an_temp = 4'b1011;
         end
          
        2'b11:  //When the 2 MSB's are 11 enable the first display
         begin
          case(thousands)
                1'b0 : sseg_temp = 7'b0000001; //to display 0
                1'b1 : sseg_temp = 7'b1001111; //to display 1
          endcase
          
          //sseg = thousands;
          an_temp = 4'b0111;
         end
       endcase
      end  
     
     assign anode = an_temp;
     assign cathode = {sseg_temp, 1'b1};
 endmodule
