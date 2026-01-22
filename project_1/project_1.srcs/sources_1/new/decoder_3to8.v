`timescale 1ns / 1ps

module decoder_3to8(
    input [2:0] a,
    output reg [7:0] b
);

    always @(*) begin
        case (a)
           3'b000 : b = 8'b0000_0001;
           3'b001 : b = 8'b0000_0010;
           3'b010 : b = 8'b0000_0100;
           3'b011 : b = 8'b0000_1000;
           3'b100 : b = 8'b0001_0000;
           3'b101 : b = 8'b0010_0000;
           3'b110 : b = 8'b0100_0000;
           3'b111 : b = 8'b1000_0000;
           default : b = 8'b0000_0000;
        endcase
    end
    
endmodule