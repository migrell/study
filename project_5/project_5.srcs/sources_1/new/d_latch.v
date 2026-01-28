`timescale 1ns / 1ps

module d_latch(
    input d,
    input en,
    output reg q
);
    always @(en) begin
        if(en)
        q<=d;
    end
   

    


endmodule
