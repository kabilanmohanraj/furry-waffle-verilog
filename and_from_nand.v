module andfromnand(o,a,b);

    input a,b;
    output o;
    assign o1 = a ~& b;
    assign o = o1 ~& o1;

endmodule