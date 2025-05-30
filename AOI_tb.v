`timescale 10ns / 1ps

module input_4_AOI_circuit_tb();
reg a,b,c,d;
wire y;

input_4_AOI_circuit uut(.a(a), .b(b), .c(c), .d(d), .y(y));

initial
begin

a=1'b0; b=1'b0; c=1'b0; d=1'b0;  #10
a=1'b0; b=1'b1; c=1'b0; d=1'b1;  #10
a=1'b1; b=1'b0; c=1'b1; d=1'b0;  #10
a=1'b0; b=1'b0; c=1'b1; d=1'b0;  #10
a=1'b1; b=1'b1; c=1'b0; d=1'b0;  #10
a=1'b0; b=1'b1; c=1'b1; d=1'b0;  #10
a=1'b1; b=1'b0; c=1'b1; d=1'b1;  #10
a=1'b1; b=1'b1; c=1'b1; d=1'b1; 

end
endmodule
