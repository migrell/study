`timescale 1ns / 1ps

module invertor(
    input in,
    output out
);
    wire in1,out1,out2;


    assign in1 = in;
    assign out1 = ~in;
    assign out2 = ~out1;
    assign out = out2;

endmodule
