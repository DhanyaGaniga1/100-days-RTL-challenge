`timescale 10ns / 1ps

module Mux_41_tb();
reg [3:0]I;
reg [1:0]S;
wire Y;

Mux_41 DUT(.I(I), .S(S), .Y(Y));

initial
begin
I=4'b0000; S=2'b00; #10
I=4'b0011; S=2'b01; #10
I=4'b0010; S=2'b10; #10
I=4'b0111; S=2'b11;
end
endmodule
