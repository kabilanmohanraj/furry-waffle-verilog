module multiplexer(a,b,s,o);

    input s,a,b;
    output o;

    assign o1 = ~s;
    assign o2 = a&o1;
    assign o3 = s&b;
    assign  o = o2|o3;

endmodule