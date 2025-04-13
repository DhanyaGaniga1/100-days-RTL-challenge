`timescale 10ns / 1ps

module squarer_tb();
reg a0,a1,a2;
wire y0,y1,y2,y3,y4,y5;

squarer uut(.a0(a0), .a1(a1), .a2(a2), .y0(y0), .y1(y1), .y2(y2), .y3(y3), .y4(y4), .y5(y5));

initial
begin

a0=1'b0; a1=1'b0; a2=1'b0; #10
a0=1'b0; a1=1'b0; a2=1'b1; #10
a0=1'b0; a1=1'b1; a2=1'b0; #10
a0=1'b0; a1=1'b1; a2=1'b1; #10
a0=1'b1; a1=1'b0; a2=1'b0; #10
a0=1'b1; a1=1'b0; a2=1'b1; #10
a0=1'b1; a1=1'b1; a2=1'b0; #10
a0=1'b1; a1=1'b1; a2=1'b1; 

end
endmodule
