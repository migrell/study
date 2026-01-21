`timescale 1ns / 1ps

module fa_16(

 input [15:0] a,
 input [15:0] b,
 output [15:0] s,
 output c
);

wire [15:0] w_c;

genvar i;
generate
    for(i=0; i<16; i = i + 1)begin:FA_GEN
        if(i==0)begin
        full_adder U_fa(    
            .a(a[i]),
            .b(b[i]),
            .cin(0),
            .s(s[i]),
            .c(w_c[i])
            );
    end else begin
        full_adder U_FA(
            .a(a[i]),
            .b(b[i]),
            .cin(w_c[i-1]),
            .s(s[i]),
            .c(w_c[i])
        );
    end
    end
endgenerate

    assign c = w_c[15];
endmodule
