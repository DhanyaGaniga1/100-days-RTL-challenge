`timescale 1ns / 1ps

module comp_2bit_tb();
reg [1:0]a,b;
wire s,e,g;

comp_2bit uut(.a(a), .b(b), .s(s), .e(e), .g(g));

initial
begin

a = 2'b00; b = 2'b00; #10;
a = 2'b01; b = 2'b00; #10;
a = 2'b10; b = 2'b01; #10;
a = 2'b11; b = 2'b10; #10;
a = 2'b00; b = 2'b11; 

end
endmodule
