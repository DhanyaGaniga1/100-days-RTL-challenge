`timescale 10ns / 1ps

module half_adder_tb();
reg a,b;
wire sum,cout;

half_adder uut(.a(a), .b(b), .sum(sum), .cout(cout));

initial
begin

a=1'b0; b=1'b0; #10
a=1'b0; b=1'b1; #10
a=1'b1; b=1'b0; #10
a=1'b1; b=1'b1; 

end
endmodule
