`timescale 1ns / 1ps

module priority_encoder(
    input [7:0] a,
    output reg [2:0] y,
    output reg v
);
    always @(*) begin
        casex (a)
            8'b1xxx_xxxx: begin      // a[7] = 1
                y = 3'b111;
                v = 1'b1;
            end 
            
            8'b01xx_xxxx: begin      // a[6] = 1
                y = 3'b110;
                v = 1'b1;
            end 
            
            8'b001x_xxxx: begin      // a[5] = 1
                y = 3'b101;
                v = 1'b1;
            end 
            
            8'b0001_xxxx: begin      // a[4] = 1 (원래 110 → 100으로 수정)
                y = 3'b100;          // ✓ 수정
                v = 1'b1;
            end 
            
            8'b0000_1xxx: begin      // a[3] = 1 (원래 010 → 011로 수정)
                y = 3'b011;          // ✓ 수정
                v = 1'b1;
            end 
            
            8'b0000_01xx: begin      // a[2] = 1 (원래 001 → 010로 수정)
                y = 3'b010;          // ✓ 수정
                v = 1'b1;
            end 
            
            8'b0000_001x: begin      // a[1] = 1 (원래 111 → 001로 수정)
                y = 3'b001;          // ✓ 수정
                v = 1'b1;
            end 
            
            8'b0000_0001: begin      // a[0] = 1 (원래 111 → 000으로 수정)
                y = 3'b000;          // ✓ 수정
                v = 1'b1;
            end 
            
            8'b0000_0000: begin      // ✓ 추가: 모든 입력이 0
                y = 3'bxxx;
                v = 1'b0;
            end
            
            default: begin           // ✓ 완성: 안전장치
                y = 3'bxxx;
                v = 1'b0;
            end
        endcase
    end

endmodule
