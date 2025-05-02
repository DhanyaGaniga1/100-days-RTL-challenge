`timescale 10ns / 1ps

module comparator_1bit_tb();
reg a,b;
wire e,g,s;

comparator_1bit uut(.a(a), .b(b), .e(e), .g(g), .s(s));

initial
begin

a=1'b0; b=1'b0; #10
a=1'b0; b=1'b1; #10
a=1'b1; b=1'b0; #10
a=1'b1; b=1'b1;

end 
endmodule
