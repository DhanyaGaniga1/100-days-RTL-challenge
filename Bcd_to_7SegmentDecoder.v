`timescale 1ns / 1ps

module bcd_2_seg7(A,B,C,D,a,b,c,d,e,f,g);
input A,B,C,D;
output a,b,c,d,e,f,g;

wire B_bar,C_bar,D_bar;
wire w1,w2,w3,w4,w5,w6,w7,w8,w9;

assign B_bar=~B,
       C_bar=~C,
       D_bar=~D;
       
assign w1=B_bar & D_bar,
       w2=B & D,
       w3=B & D_bar,
       w4=C & D,
       w5=C_bar & D_bar,
       w6=C & D_bar,
       w7=B & C_bar & D,
       w8=B_bar & C,
       w9=B & C_bar;
       
assign a=A|w1|w2|C,
       b=A|B_bar|w4|w5,
       c=B|D|w5,
       d=A|w1|w6|w7|w8,
       e=w1|w6,
       f=A|w3|w5|w9,
       g=A|w6|w8|w9;
endmodule
