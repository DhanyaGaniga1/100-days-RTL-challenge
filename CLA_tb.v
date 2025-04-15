`timescale 10ns / 1ps

module CLA_tb();
reg [3:0]a,b;
reg c11;
wire [3:0]s;
wire cout;
CLA uut(.a(a), .b(b), .c11(c11), .s(s), .cout(cout));

initial
begin
a=4'b0000; b=4'b0000 ;c11=1'b0; #10 
a=4'b1001; b=4'b1010; c11=1'b0; #10
a=4'b0001; b=4'b1001; c11=1'b1; #10 
a=4'b0101; b=4'b0101; c11=1'b1; 
end
endmodule
