`timescale 1ns / 1ps

module tb_ff_inv();

    reg clk;
    reg rstb;
    wire q;
    
    ff_inv U_FF_INV(
        .clk(clk),
        .rstb(rstb),
        .q(q)
    );
    
    initial clk = 0;
    always #5 clk = ~clk;


    initial begin
        #0 rstb = 0;
        #10 rstb = 1;
       #100 $stop;
    end




endmodule
