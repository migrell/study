`timescale 1ns / 1ps

module tb_fa16;

  reg  [15:0] a;
  reg  [15:0] b;
  reg         cin;
  wire [15:0] s;
  wire        c;

  fa_16 dut (
    .a(a),
    .b(b),
    .cin(cin),
    .s(s),
    .c(c)
  );

  initial begin
    // Test 0
    a = 16'h0000; b = 16'h0000; cin = 1'b0; #10;

    // Test 1: 1+1
    a = 16'h0001; b = 16'h0001; cin = 1'b0; #10;

    // Test 2: FFFF + 1
    a = 16'hFFFF; b = 16'h0001; cin = 1'b0; #10;

    // Test 3: cin 영향 확인
    a = 16'h0000; b = 16'h0000; cin = 1'b1; #10;

    // Test 4: 랜덤
    a = 16'h1234; b = 16'h4321; cin = 1'b0; #10;

    $finish;
  end

endmodule
