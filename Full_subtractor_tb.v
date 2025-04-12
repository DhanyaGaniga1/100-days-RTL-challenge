`timescale 10ns / 1ps

module full_subtractor_tb();
reg a,b,cin;
wire diff,borrow;

full_subtractor uut(.a(a), .b(b), .cin(cin), .diff(diff), .borrow(borrow));

initial 
begin

a=1'b0; b=1'b0; cin=1'b0; #10
a=1'b0; b=1'b0; cin=1'b1; #10
a=1'b0; b=1'b1; cin=1'b0; #10
a=1'b0; b=1'b1; cin=1'b1; #10
a=1'b1; b=1'b0; cin=1'b0; #10
a=1'b1; b=1'b0; cin=1'b1; #10
a=1'b1; b=1'b1; cin=1'b0; #10
a=1'b1; b=1'b1; cin=1'b1; 

end
endmodule
