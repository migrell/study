`timescale 1ns / 1ps

module fa_4 (
    input  [3:0] a,   // 4bit vector형
    input  [3:0] b,
    // input cin,
    output [3:0] s,
    output c
);

    wire [3:0] w_c;

    full_adder U_fa0(
        .a(a[0]),
        .b(b[0]),
        .cin(1'b0),
        .sum(s[0]),
        .c(w_c[0])
    );

    full_adder U_fa1(
        .a(a[1]),
        .b(b[1]),
        .cin(w_c[0]),
        .sum(s[1]),
        .c(w_c[1])
    );

    full_adder U_fa2(
        .a(a[2]),
        .b(b[2]),
        .cin(w_c[1]),
        .sum(s[2]),
        .c(w_c[2])
    );

    full_adder U_fa4(
        .a(a[3]),
        .b(b[3]),
        .cin(w_c[2]),
        .sum(s[3]),
        .c(c)
    );

endmodule






