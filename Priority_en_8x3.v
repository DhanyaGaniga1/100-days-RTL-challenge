`timescale 1ns / 1ps

module Priority_en_8x3(d,y);
input [7:0]d;
output reg[2:0]y;

always@(*)
begin

if (d[0]==1)
y=3'b000;
else if(d[1]==1)
y=3'b001;
else if(d[2]==1)
y=3'b010;
else if(d[3]==1)
y=3'b011;
else if(d[4]==1)
y=3'b100;
else if(d[5]==1)
y=3'b101;
else if(d[6]==1)
y=3'b110;
else if(d[7]==1)
y=3'b111;
else
y=3'bxxx;
end
endmodule
