module notfromnand(o,a);

    input a;
    output o;
    assign o = a ~& a;

endmodule 