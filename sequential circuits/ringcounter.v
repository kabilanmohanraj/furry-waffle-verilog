module ringcounter(clk,reset,q);

output reg [3:0] q;
input clk,reset;

always @(posedge clk)
begin
	if (reset == 0)
		begin
		   q = 4'b1110;
		end
	else if(reset == 1)
		begin
		   q[3] <= q[2];
		   q[2] <= q[1];
		   q[1] <= q[0];
		   q[0] <= q[3];
		end
end
endmodule