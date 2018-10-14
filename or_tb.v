module orgate_tb;
wire t_o;
reg t_a , t_b;
or_gate og(t_o , t_a, t_b); // --1.
//or_gate og(.b(t_b),.a(t_a),.o(t_o)); --2.
// The module can be called using 1. or 2.
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
