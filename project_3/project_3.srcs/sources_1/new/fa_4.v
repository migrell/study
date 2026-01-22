`timescale 1ns / 1ps

module fa_4 (
    input  [3:0] a,
    input  [3:0] b,
    input        cin,
    output [3:0] s,
    output       cout
);
    wire [3:0] w_c;

    full_adder U0(.a(a[0]), .b(b[0]), .cin(cin),    .s(s[0]), .c(w_c[0]));
    full_adder U1(.a(a[1]), .b(b[1]), .cin(w_c[0]), .s(s[1]), .c(w_c[1]));
    full_adder U2(.a(a[2]), .b(b[2]), .cin(w_c[1]), .s(s[2]), .c(w_c[2]));
    full_adder U3(.a(a[3]), .b(b[3]), .cin(w_c[2]), .s(s[3]), .c(cout));

endmodule
