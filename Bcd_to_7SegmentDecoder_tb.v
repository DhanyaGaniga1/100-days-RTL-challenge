`timescale 1ns / 1ps

module bcd_2_seg7_tb();
reg A,B,C,D;
wire a,b,c,d,e,f,g;

bcd_2_seg7 DUT(.A(A), .B(B), .C(C), .D(D), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g));

initial
begin

A=1'b0; B=1'b0; C=1'b0; D=1'b0; #10
A=1'b0; B=1'b0; C=1'b0; D=1'b1; #10
A=1'b0; B=1'b0; C=1'b1; D=1'b0; #10
A=1'b0; B=1'b0; C=1'b1; D=1'b1; #10
A=1'b0; B=1'b1; C=1'b0; D=1'b0; #10
A=1'b0; B=1'b1; C=1'b0; D=1'b1; #10
A=1'b0; B=1'b1; C=1'b1; D=1'b0; #10
A=1'b0; B=1'b1; C=1'b1; D=1'b1; #10
A=1'b1; B=1'b0; C=1'b0; D=1'b0; #10
A=1'b1; B=1'b0; C=1'b0; D=1'b1; 

end
endmodule
