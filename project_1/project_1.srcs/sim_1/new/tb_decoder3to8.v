`timescale 1ns / 1ps

module tb_decoder3to8();
    reg [2:0] a;
    wire [7:0] b;  // y → b로 수정 (모듈과 일치)
    reg [7:0] expected;

    decoder_3to8 U_DECODER_3TO8(.a(a), .b(b));  // 포트 연결 수정

    initial begin
        for(a = 3'b000; a <= 3'b111; a = a + 1) begin  // <= 로 수정, begin 추가
            expected = 8'h0;
            expected[a] = 1'b1;
            #10;
            if(b !== expected)  // y → b로 수정
                $display("ERROR OCCURRED! WHEN a = %b", a);  // 문법 수정
        end
        #10 $stop;
    end

endmodule