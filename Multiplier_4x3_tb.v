`timescale 10ns / 1ps

module Multiplier_43_tb();
reg [2:0]a;
reg [3:0]b;
wire [6:0]z;

Multiplier_43 uut(.a(a), .b(b), .z(z));

initial
begin
a=3'b000; b=4'b0000;  #10 
a=3'b010; b=4'b0011;  #10 
a=3'b101; b=4'b1110;  #10 
a=3'b110; b=4'b1010;  
end
endmodule
