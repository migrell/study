`timescale 1ns / 1ps

module tb_rotator_8bit;

    reg  [7:0] a;
    reg  [2:0] rol_amt;
    wire [7:0] y;

    // DUT
    rotator_8bit U_ROTATOR_8BIT (
        .a(a),
        .rol_amt(rol_amt),
        .y(y)
    );

    integer i;

    initial begin
        // {a, rol_amt}를 하나의 11비트 값으로 순회
        for (i = 0; i < 11'h7ff; i = i + 1) begin
            {a, rol_amt} = i;
            #10 $display("%b (rol %b) -> %b", a, rol_amt, y);
        end
        $stop;
    end

endmodule
