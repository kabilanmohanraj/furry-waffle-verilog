/* Implemented using behavioural abstraction */
module mux2to1(a,b,s,mout);

output mout;
input a,b,s;
reg mout;

always @(a or b or s)
	begin
	if (s==1)
	begin
	   mout=a;
	   $display(" %b  %b  %b ---- %b", a, b, s, mout);
	end
	else
	begin
	   mout=b;
	   $display(" %b  %b  %b ---- %b", a, b, s, mout);
	end
	end
endmodule