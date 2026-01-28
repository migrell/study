`timescale 1ns / 1ps

module tb_bcd_counter();
    reg clk;
    reg reset;
    wire [3:0] count;

    BCD_counter U_COUNTER(
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 0;
        #10 reset = 1;
        #20 reset = 0;

        #150;

        $finish;



    end


endmodule
