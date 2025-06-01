`timescale 10ns / 1ps

module Demux_12_tb();
reg I,S;
wire [1:0]Y;

Demux_12 DUT(.I(I), .S(S), .Y(Y));
initial
begin

I=0; S=0; #10
I=1; S=0; #10
I=0; S=1; #10
I=1; S=1; 
end
endmodule
