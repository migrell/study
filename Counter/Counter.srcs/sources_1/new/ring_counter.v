`timescale 1ns / 1ps

module ring_counter(
    input clk,
    input reset,
    output reg [3:0] count
    );

    always @(posedge clk, posedge reset) begin
        if(reset)begin
            count = 4'b0001;
        end else begin
            case (count)
                4'b0001: count = 4'b0010; 
                4'b0010: count = 4'b0100;
                4'b0100: count = 4'b1000;
                4'b1000: count = 4'b0001;
                default: count = 4'b0001;
            endcase
        end
    end

endmodule
