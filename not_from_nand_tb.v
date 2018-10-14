module notfromnand_tb;
wire t_o;
reg t_a;
notfromnand x(t_o, t_a);

initial
begin 
$monitor("~%b = %b at time %d",t_a,t_o,$time);

t_a = 1'b0;

#1
t_a = 1'b1;

end
endmodule
