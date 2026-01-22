`timescale 1ns / 1ps

module bcd_add1(
    input  [3:0] a,
    input  [3:0] b,
    input        cin,
    output [3:0] s,
    output       cout
);
    wire [3:0] Z;
    wire K;
    wire C;
    wire [3:0] ADD6;
    wire dummy;

    fa_4 U_FA_4_UP(
        .a(a),
        .b(b),
        .cin(cin),
        .s(Z),
        .cout(K)
    );

    assign C    = K | (Z[3] & Z[2]) | (Z[3] & Z[1]);
    assign ADD6 = C ? 4'b0110 : 4'b0000;

    fa_4 U_FA_4_DOWN(
        .a(Z),
        .b(ADD6),
        .cin(1'b0),
        .s(s),
        .cout(dummy)
    );

    assign cout = C;

endmodule
