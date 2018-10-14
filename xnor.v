module xor_gate(o,a,b);
    input a,b;
    output o;
    //xnor o1(o,a,b);
    assign o = a ~^ b;
endmodule