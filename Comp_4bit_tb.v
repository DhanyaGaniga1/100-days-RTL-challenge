`timescale 10ns / 1ps

module comp_4bit_tb();
reg [3:0]a,b;
wire s,e,g;

comp_4bit uut(.a(a), .b(b), .s(s), .e(e), .g(g));

initial
begin

a=4'b0000; b=4'b0000; #10 
a=4'b0001; b=4'b0010; #10 
a=4'b1000; b=4'b0001; #10 
a=4'b1101; b=4'b1110;

end
endmodule
