`timescale 1ns/1ps

module tb_inverter2;

  reg  in;
  wire out;

  // DUT 인스턴스
  invertor U_INVERTOR (
    .in (in),
    .out(out)
  );

  initial begin
    in = 0;
    #5  in = 1;
    #10 in = 0;
    #5  in = 1;
    #5  $stop;
  end



endmodule
