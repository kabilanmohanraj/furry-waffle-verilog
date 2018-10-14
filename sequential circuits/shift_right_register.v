module SRRegister(clk,reset,q);

output reg [7:0] q;
input clk,reset;
reg [2:0] i;

always @(posedge clk)
begin
	if (reset == 0)
		begin
		   q = 8'b11100000;
		end
	else if(reset == 1)
		begin
		   i = 3'd0;
		   while(i <= 3'd6)
		   begin
				q[i] = q[i+1];
				i = i + 3'd1;
		   end
		   q[7] = 1'b0;
end
end
endmodule
