`timescale 1ns / 1ps

module bcd_up_down_counter(
    input clk,
    input reset,
    input up_down,
    output reg [3:0] count
);
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            count<=0;
        end else if(up_down)begin
            if(count == 9) begin
                count<=0;
            end else begin
                count<=count+1;
            end 
        end else begin
            if(count ==0)begin
                count<=9;
            end else begin
                count <= count - 1;
            end
        end
    end


endmodule
