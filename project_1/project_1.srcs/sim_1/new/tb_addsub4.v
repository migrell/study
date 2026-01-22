`timescale 1ns / 1ps

module tb_add_sub4;

    reg [3:0] a;
    reg [3:0] b;
    reg sub;
    wire [3:0] s;
    wire c;

    // DUT 인스턴스
    add_sub4 u_add_sub4(
        .a(a),
        .b(b),
        .sub(sub),
        .s(s),
        .c(c)
    );

    initial begin
        $display("Time\ta\tb\tsub\ts\tc\tOperation");
        $display("==========================================");
        
        // 덧셈 테스트
        sub = 0;
        a = 4'd5;  b = 4'd3;  #10;  // 5 + 3 = 8
        $display("%4t\t%d\t%d\t%b\t%d\t%b\tADD", $time, a, b, sub, s, c);
        
        a = 4'd7;  b = 4'd9;  #10;  // 7 + 9 = 16 (overflow)
        $display("%4t\t%d\t%d\t%b\t%d\t%b\tADD", $time, a, b, sub, s, c);
        
        a = 4'd12; b = 4'd4;  #10;  // 12 + 4 = 16 (overflow)
        $display("%4t\t%d\t%d\t%b\t%d\t%b\tADD", $time, a, b, sub, s, c);
        
        // 뺄셈 테스트
        sub = 1;
        a = 4'd15; b = 4'd1;  #10;  // 15 - 1 = 14
        $display("%4t\t%d\t%d\t%b\t%d\t%b\tSUB", $time, a, b, sub, s, c);
        
        a = 4'd8;  b = 4'd3;  #10;  // 8 - 3 = 5
        $display("%4t\t%d\t%d\t%b\t%d\t%b\tSUB", $time, a, b, sub, s, c);
        
        a = 4'd10; b = 4'd6;  #10;  // 10 - 6 = 4
        $display("%4t\t%d\t%d\t%b\t%d\t%b\tSUB", $time, a, b, sub, s, c);
        
        a = 4'd3;  b = 4'd8;  #10;  // 3 - 8 = -5 (11 in 4-bit)
        $display("%4t\t%d\t%d\t%b\t%d\t%b\tSUB", $time, a, b, sub, s, c);
        
        a = 4'd0;  b = 4'd1;  #10;  // 0 - 1 = -1 (15 in 4-bit)
        $display("%4t\t%d\t%d\t%b\t%d\t%b\tSUB", $time, a, b, sub, s, c);
        
        $display("==========================================");
        $finish;
    end

endmodule
