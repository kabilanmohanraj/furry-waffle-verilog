module fulladder_tb;
wire t_s, t_co;
reg t_a , t_b, t_ci;
full_adder fa(t_a, t_b, t_ci, t_s, t_co);

initial
begin
$monitor("%b + %b + %b = %b - sum| %b - carry at time %d",t_a,t_b,t_ci,t_s,t_co,$time);

t_a = 1'b0;
t_b = 1'b0;
t_ci = 1'b0;
#7 $finish;

end

always #4
t_a = ~t_a;
always #2
t_b = ~t_b;
always #1
t_ci = ~t_ci;

endmodule