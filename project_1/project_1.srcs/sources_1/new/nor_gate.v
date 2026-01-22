
module nor_gate (
    input  [3:0] a,
    input  [3:0] b,
    output [3:0] y
);

    assign y[0] = ~(a[0] | b[0]);
    assign y[1] = ~(a[1] | b[1]);
    assign y[2] = ~(a[2] | b[2]);
    assign y[3] = ~(a[3] | b[3]);

endmodule