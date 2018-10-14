module upCounter_tb;

wire [3:0] q;
reg clk,reset;

upcounter tb(clk,reset,q);

initial
begin
$display("clock  reset    counter   ");
$monitor("  %b     %b  ---  %b    at time t = %d",clk,reset,q,$time);
reset = 1'b0;
clk = 1'b0;
#11
reset = 1'b1;
#200 $finish;
end

always #5
clk = ~clk;
endmodule