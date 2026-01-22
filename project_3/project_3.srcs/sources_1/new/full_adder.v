`timescale 1ns / 1ps

module full_adder(
    input a,
    input b,
    input cin,
    output s,
    output c
);

    wire w_s;
    wire w_c1, w_c2;

    assign c = w_c1 | w_c2;

    half_adder U_HA1(
        .a(a),
        .b(b),
        .s(w_s),
        .c(w_c1)
    );

    half_adder U_HA2(
        .a(w_s),
        .b(cin),
        .s(s),
        .c(w_c2)
    );

endmodule
