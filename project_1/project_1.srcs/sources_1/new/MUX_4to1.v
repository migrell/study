`timescale 1ns / 1ps

module MUX_4to1(
    input  wire [15:0] a,
    input  wire [15:0] b,
    input  wire [15:0] c,
    input  wire [15:0] d,

    input  wire [1:0]  sel,
    output reg  [15:0] y
);

    always @(*) begin
        case (sel)
            2'b00 : y = a; 
            2'b01 : y = b; 
            2'b10 : y = c; 
            2'b11 : y = d; 
            default: y = 16'b0;
        endcase
    end

endmodule
