`timescale 10ns / 1ps

module mux_21_tb();
reg I0,I1,S;
wire Y;

mux_21 DUT(.I0(I0), .I1(I1), .S(S), .Y(Y));

initial
begin
I0=1'b1;
I1=1'b0;
S=1'b0; #10
S=1'b1;

end
endmodule
