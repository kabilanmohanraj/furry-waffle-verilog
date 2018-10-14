module orfromnand_tb;
wire t_o;
reg t_a , t_b;
orfromnand x(t_o, t_a, t_b);

initial
begin 
$monitor("%b | %b = %b at time %d",t_a,t_b,t_o,$time);

t_a = 1'b0;
t_b = 1'b0;

#1
t_a = 1'b0;
t_b = 1'b1;

#1
t_a = 1'b1;
t_b = 1'b0;

#1
t_a = 1'b1;
t_b = 1'b1;

end
endmodule
