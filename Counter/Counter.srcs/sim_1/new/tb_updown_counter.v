`timescale 1ns / 1ps

module tb_up_down_counter;

    reg clk;
    reg reset;
    reg up_down;
    wire [3:0] count;

    // DUT 인스턴스
    up_down_counter dut (
        .clk(clk),
        .reset(reset),
        .up_down(up_down),
        .count(count)
    );

    
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        up_down = 1;

        #10 reset = 0;
        up_down = 1;

        #200;
        up_down = 0;
        
        #200;

        $stop;

     end


endmodule
