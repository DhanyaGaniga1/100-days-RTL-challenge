`timescale 10ns / 1ps

module Demux_14_tb();
reg I;
reg [1:0]S;
wire [3:0]Y;

Demux_14 DUT(.I(I), .S(S), .Y(Y));
initial
begin

I=1'b1;
S[1]=1'b0; S[0]=1'b0; #10
S[1]=1'b0; S[0]=1'b1; #10
S[1]=1'b1; S[0]=1'b0; #10
S[1]=1'b1; S[0]=1'b1; 

end
endmodule
