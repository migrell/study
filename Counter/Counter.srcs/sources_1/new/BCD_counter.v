`timescale 1ns / 1ps

module BCD_counter(
    input clk,
    input reset,
    output reg [3:0] count
);
    always @(posedge clk, posedge reset) begin
        if(reset)begin
            count<=0;
        end else if(count == 9) begin
            count<=0;
        end else begin
            count <= count + 1;
        end
    end



endmodule