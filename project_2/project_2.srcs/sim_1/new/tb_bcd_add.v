`timescale 1ns / 1ps
module tb_bcd;

    reg  [7:0] a, b;
    wire [11:0] s;

    bcd_top dut
    (.a(a), .b(b), .s(s));

    initial begin
        a = 8'h03; b = 8'h04; #10;   // 03+04=07 -> s = 0000_0000_0111
        a = 8'h69; b = 8'h32; #10;   // 69+32=101 -> s = 0001_0000_0001
        $stop;
    end
endmodule
