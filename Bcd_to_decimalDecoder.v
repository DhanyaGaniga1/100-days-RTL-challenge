`timescale 1ns / 1ps

module BCD_2_DEC(a,b,c,d,y);
input a,b,c,d;
output [9:0]y;
wire a_B,b_B,c_B,d_B;

assign a_B=~a,
       b_B=~b,
       c_B=~c,
       d_B=~d;
       
assign y[0]=a_B & b_B & c_B & d_B;
assign y[1]=a_B & b_B & c_B &d;
assign y[2]=a_B & b_B & c & d_B;
assign y[3]=a_B & b_B & c & d;
assign y[4]=a_B & b & c_B & d_B;
assign y[5]=a_B & b & c_B & d;
assign y[6]=a_B & b & c & d_B;
assign y[7]=a_B & b & c & d;
assign y[8]=a & b_B & c_B & d_B;
assign y[9]=a & b_B & c_B & d;

endmodule
