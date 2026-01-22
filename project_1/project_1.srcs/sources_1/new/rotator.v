`timescale 1ns / 1ps

module rotator_8bit (
    input  [7:0] a,
    input  [2:0] rol_amt,
    output reg [7:0] y
);

    always @(*) begin
        case (rol_amt)
            3'b000: y = a;
            3'b001: y = {a[6:0], a[7]};
            3'b010: y = {a[5:0], a[7:6]};
            3'b011: y = {a[4:0], a[7:5]};
            3'b100: y = {a[3:0], a[7:4]};
            3'b101: y = {a[2:0], a[7:3]};
            3'b110: y = {a[1:0], a[7:2]};
            3'b111: y = {a[0],   a[7:1]};
            default: y = a;
        endcase
    end

endmodule
