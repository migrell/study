`timescale 1ns / 1ps

module bcd_top(
    input  [7:0]  a,
    input  [7:0]  b,
    output [11:0] s
);
    wire c0, c1;

    bcd_add1 U_0(
        .a(a[3:0]),
        .b(b[3:0]),
        .cin(1'b0),
        .s(s[3:0]),
        .cout(c0)
    );

    bcd_add1 U_1(
        .a(a[7:4]),
        .b(b[7:4]),
        .cin(c0),
        .s(s[7:4]),
        .cout(c1)
    );

    assign s[11:8] = {3'b000, c1};

endmodule
