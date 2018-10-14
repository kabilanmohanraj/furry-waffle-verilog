module xorgate_tb;
wire t_o;
reg t_a , t_b;
xor_gate xog(t_o , t_a, t_b);
//xor_gate og(.b(t_b),.a(t_a),.o(t_o));
initial
begin 
$monitor("%b ^ %b = %b at time %d",t_a,t_b,t_o,$time);

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
