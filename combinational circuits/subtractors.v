module half_subtractor(a,b,d,b);

input a,b;
output d,b;
assign d = a^b;
assign b = (~a)&b;

endmodule

/* More than one module can be
 present in a single '.v' file 
 but, each module should have
 separate test bench(tb) files */

module full_subtractor(a,b,d,b);

input a,b,c;
output d,b;
assign o1 = a^b;
assign  d = o1^c;
assign o2 = ~a;
assign o3 = o2&b;
assign o4 = a ~^ b;
assign o5 = o4&c;
assign  b = o3|o5;

endmodule
