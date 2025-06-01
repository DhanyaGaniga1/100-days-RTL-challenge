`timescale 10ns / 1ps

module Mux_81_tb();
reg [7:0]I;
reg [2:0]S;
wire Y;

Mux_81 DUT(.I(I), .S(S), .Y(Y));

initial
begin

I=8'b00000000; S=3'b000; #10
I=8'b00000010; S=3'b001; #10
I=8'b00010001; S=3'b010; #10
I=8'b00101001; S=3'b011; #10
I=8'b00001111; S=3'b100; #10
I=8'b11111111; S=3'b101; #10
I=8'b00101011; S=3'b110; #10
I=8'b11110101; S=3'b111; 

end
endmodule
