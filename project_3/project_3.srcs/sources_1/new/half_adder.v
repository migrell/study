module half_adder(
    input  a,
    input  b,
    output s,
    output c
);
    assign s = a ^ b; // s로 수정
    assign c = a & b; // c로 수정
endmodule