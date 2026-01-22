`timescale 1ns / 1ps

module tb_nor_gate();

    reg [3:0] a ,b;
    wire [3:0] y;

    nor_gate U_NOR_GATE(
        .a(a),
        .b(b),
        .y(y)
     );

     initial begin
        for({a,b}= 8'b0; {a,b} < 8'hff; {a,b} = {a,b} + 1)
        #10
        if(y !== ~(a | b))
         $display("Error occurred! a = %b b = %b y = %b", a, b ,y);
         #10 $stop;
     end



endmodule
