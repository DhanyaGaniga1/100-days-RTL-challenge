`timescale 1ns / 1ps

module basic_gates(input a,b,output c,d,e,f,g,h,i);
assign c = ~a;        //NOT gate
assign d = a&b;       //AND gate
assign e = a|b;       //OR gate
assign f = ~(a&b);    //NAND gate
assign g = ~(a|b);    //NOR gate
assign h = a^b;       //XOR gate
assign i = ~(a^b);    //XNOR gate

endmodule
