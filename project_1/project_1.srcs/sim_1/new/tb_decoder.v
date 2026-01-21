`timescale 1ns / 1ps

module tb_decorder;

    reg  [4:0]  a;     // for문 제어용 → reg
    wire [15:0] b;     // DUT 출력 → wire

    decoder_4to16 U_DECODER_4to16(
        .a(a[3:0]),    // 하위 4비트만 연결
        .b(b)
    );

    initial begin
        for (a = 5'b00000; a <= 5'b01111; a = a + 1)
            #10;
    end

endmodule
