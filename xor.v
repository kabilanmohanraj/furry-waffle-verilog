module xor_gate(o,a,b);
    input a,b;
    output o;
    /* xor o1(o,a,b); Gate level abstraction */ 
    assign o = a ^ b;
endmodule