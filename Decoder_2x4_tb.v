`timescale 10ns / 1ps

module Decoder_2x4_tb();
reg [1:0]a;
wire [3:0]d;

Decoder_2x4 uut(.a(a), .d(d));
initial
begin

a=2'b00; #10
a=2'b01; #10
a=2'b10; #10
a=2'b11;

end
endmodule
