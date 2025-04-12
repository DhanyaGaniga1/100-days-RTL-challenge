`timescale 1ns / 1ps

module half_subtractor(input a,b,output diff,borrow);
wire w1;

xor g1(diff,a,b);
not g2(w1,a);
and g3(borrow,w1,b);

endmodule
