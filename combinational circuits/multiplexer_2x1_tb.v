module mux_2x1_tb;

reg a,b,s;
wire mout;

mux2to1 m(a,b,s,mout);

initial
begin

//$monitor("%b  %b  %b ---- %b",a,b,s,mout);

a = 1'b0;
b = 1'b0;
s = 1'b0;
#1
a = 1'b0;
b = 1'b0;
s = 1'b1;
#1
a = 1'b0;
b = 1'b1;
s = 1'b0;
#1
a = 1'b0;
b = 1'b1;
s = 1'b1;
#1
a = 1'b1;
b = 1'b0;
s = 1'b0;
#1
a = 1'b1;
b = 1'b0;
s = 1'b1;
#1
a = 1'b1;
b = 1'b1;
s = 1'b0;
#1
a = 1'b1;
b = 1'b1;
s = 1'b1;

end
endmodule
