`timescale 1ns / 1ps

module bin2bcd(//추가
    input  [31:0] bin,
    output reg [39:0] bcd
);

    integer i;
    reg [31:0] binreg;

    always @(*) begin
        binreg = bin;
        bcd    = 40'h0;

        for (i = 0; i <= 31; i = i + 1) begin
            if (bcd[3:0]   >= 5) bcd[3:0]   = bcd[3:0]   + 4'd3;
            if (bcd[7:4]   >= 5) bcd[7:4]   = bcd[7:4]   + 4'd3;
            if (bcd[11:8]  >= 5) bcd[11:8]  = bcd[11:8]  + 4'd3;  // 오타 수정
            if (bcd[15:12] >= 5) bcd[15:12] = bcd[15:12] + 4'd3;
            if (bcd[19:16] >= 5) bcd[19:16] = bcd[19:16] + 4'd3;
            if (bcd[23:20] >= 5) bcd[23:20] = bcd[23:20] + 4'd3;  // [24:20] -> [23:20]
            if (bcd[27:24] >= 5) bcd[27:24] = bcd[27:24] + 4'd3;
            if (bcd[31:28] >= 5) bcd[31:28] = bcd[31:28] + 4'd3;
            if (bcd[35:32] >= 5) bcd[35:32] = bcd[35:32] + 4'd3;
            if (bcd[39:36] >= 5) bcd[39:36] = bcd[39:36] + 4'd3;

            // shift left by 1: {bcd, binreg} <<= 1
            {bcd, binreg} = {bcd[38:0], binreg, 1'b0};
        end
    end

endmodule





