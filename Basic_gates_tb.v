`timescale 10ns/1ps

module basic_gates_tb();
reg a_tb,b_tb;
wire c_tb,d_tb,e_tb,f_tb,g_tb,h_tb,i_tb;

basic_gates DUT(a_tb,b_tb,c_tb,d_tb,e_tb,f_tb,g_tb,h_tb,i_tb);

initial 
begin

a_tb=1'b0; b_tb=1'b0;  #10
a_tb=1'b0; b_tb=1'b1;  #10 
a_tb=1'b1; b_tb=1'b0;  #10
a_tb=1'b1; b_tb=1'b1;  #10

$finish;
end
endmodule
