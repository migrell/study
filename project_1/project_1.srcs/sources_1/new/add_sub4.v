`timescale 1ns / 1ps

module add_sub4 (
    input [3:0] a,
    input [3:0] b,
    input sub,
    output [3:0] s,
    output c
);
    wire [3:0] bin;
    wire [3:0] w_c;

    assign bin[0] = b[0] ^ sub;
    assign bin[1] = b[1] ^ sub;
    assign bin[2] = b[2] ^ sub;
    assign bin[3] = b[3] ^ sub;

    full_adder U_fa1(
        .a(a[0]),
        .b(bin[0]),
        .cin(sub),
        .s(s[0]),
        .c(w_c[0])
        );

        full_adder U_fa2(
        .a(a[1]),
        .b(bin[1]),
        .cin(w_c[0]),
        .s(s[1]),
        .c(w_c[1])
        );

        full_adder U_fa3(
        .a(a[2]),
        .b(bin[2]),
        .cin(w_c[1]),
        .s(s[2]),
        .c(w_c[2])
        );

        full_adder U_fa4(
        .a(a[3]),
        .b(bin[3]),
        .cin(w_c[2]),
        .s(s[3]),
        .c(c)
        );



    
endmodule