`timescale 1ns / 1ps

module up_down_counter(
    input clk,
    input reset,
    input up_down,
    output reg[3:0] count  
);
    always @(posedge clk, posedge reset) begin
        if(reset)begin
            count<=0;
        end else if(up_down)begin
            count <= count + 1;
        end else begin
            count <= count - 1;
        end
    end


endmodule
