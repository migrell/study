`timescale 1ns / 1ps

module encoder_8to3(
    input  [7:0] a,
    output reg [2:0] y
);

    always @(*) begin
        case (a)
            8'b0000_0001: y = 3'b000; // a[0]
            8'b0000_0010: y = 3'b001; // a[1]
            8'b0000_0100: y = 3'b010; // a[2]
            8'b0000_1000: y = 3'b011; // a[3]
            8'b0001_0000: y = 3'b100; // a[4]
            8'b0010_0000: y = 3'b101; // a[5]
            8'b0100_0000: y = 3'b110; // a[6]
            8'b1000_0000: y = 3'b111; // a[7]
            default:      y = 3'b000; // 입력이 one-hot이 아닐 경우
        endcase
    end

endmodule
