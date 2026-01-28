`timescale 1ns / 1ps

module ff_inv(
    input clk,
    input rstb,
    output reg q
);
    wire d;
    assign d = ~q;

    always @(posedge clk, negedge rstb) begin
        if(!rstb) begin
            q<=0;
        end else begin
            q<=d;
        end
    end


endmodule
