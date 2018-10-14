module half_adder(a,b,s,c);

input a,b;
output s,c;
assign s = a^b;
assign c = a&b;

endmodule

/* More than one module can be
 present in a single '.v' file 
 but, each module should have
 separate test bench(tb) files */

module full_adder(a,b,ci,s,co);

input a,b,ci;
output s,co;
assign s1 = a^b;
assign s = s1^ci;
assign c1 = a&b;
assign c2 = ci&s1;
assign co = c1|c2;

endmodule
