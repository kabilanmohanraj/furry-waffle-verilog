module upcounter(clk,reset,q);

output reg [3:0] q;
input clk,reset;

always @(posedge clk)
begin
	if (reset == 0)
		begin
		   q = 4'b0000;
		end
	else
		begin
		   q = q + 4'b0001;
		end
end
endmodule