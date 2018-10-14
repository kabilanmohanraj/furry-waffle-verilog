module or_gate(o,a,b);
    input a,b;
    output o;
    //or o1(o,a,b); /* This is gate level abstraction implementaion in verilog*/

    assign o = a | b; /* This is data flow abstraction implementaion in verilog*/
endmodule