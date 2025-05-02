`timescale 10ns / 1ps

module adder_sub_4bit_tb();
reg [3:0]a,b;
reg [4:0]ctr;
wire [3:0]s;
wire c4;

adder_sub_4bit uut(.a(a), .b(b), .ctr(ctr), .s(s), .c4(c4));

initial
begin

ctr=1'b0; 
a=4'd3; b=4'd9; #10
a=4'd5; b=4'd5; #10
a=4'd2; b=4'd1; #10
a=4'he; b=4'h7; #10

ctr=1'b1;
a=4'd9; b=4'd3; #10
a=4'd5; b=4'd5; #10
a=4'd2; b=4'd1; #10
a=4'h1; b=4'he; 

end 
endmodule
