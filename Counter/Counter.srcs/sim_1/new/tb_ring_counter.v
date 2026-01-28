`timescale 1ns / 1ps

module tb_ring_counter();
    reg clk;
    reg reset;
    wire [3:0] count;

    ring_counter U_RING_COUNTER(
        .clk(clk),
        .reset(reset),
        .count(count)
    );
    
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
       
     #10 reset = 0;

     #100;
     $stop;

    end


endmodule
