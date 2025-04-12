`timescale 1ns / 1ps

module full_subtractor(input a,b,cin,output diff,borrow);
wire w1,w2,w3,w4,w5;

xor g1(w1,a,b);
xor g2(diff,w1,cin);
not g3(w2,a);
and g4(w3,w2,b);
not g5(w4,w1);
and g6(w5,w4,cin);
or g7(borrow,w5,w3);

endmodule
