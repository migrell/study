`timescale 1ns / 1ps

module tb_excess3();

    reg  [3:0] bcd;
    wire [3:0] excess3;

    bcd2excess3 U_BCD2EXCESS3 (
        .bcd(bcd),
        .excess3(excess3)
    );

    initial begin
        for (bcd = 4'b0000; bcd <= 4'b1111; bcd = bcd + 1) begin
            #10;
            $display("bcd:%b, excess3:%b", bcd, excess3);
        end
        #10; $display("bcd:%b, excess3:%b", bcd, excess3);
        $stop;
    end

endmodule
