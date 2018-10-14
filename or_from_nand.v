// Implementation -- data flow abstraction
module orfromnand(o,a,b);
    input a,b;
    output o;
        assign o1 = a ~& a;
        assign o2 = b ~& b;
        assign  o = o1 ~& o2;
endmodule