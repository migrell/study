
module FA_4bit(x_in,y_in,c_in,c_out,sum);

	input [3:0] x_in;
	input [3:0] y_in;
	input c_in;
	output [3:0] sum;
	output c_out;

	wire c1,c2,c3;

   FA fa0 (
    .a   (x_in[0]),
    .b   (y_in[0]),
    .cin (c_in),
    .cout(c1),
    .sum (sum[0])
);

FA fa1 (
    .a   (x_in[1]),
    .b   (y_in[1]),
    .cin (c1),
    .cout(c2),
    .sum (sum[1])
);

FA fa2 (
    .a   (x_in[2]),
    .b   (y_in[2]),
    .cin (c2),
    .cout(c3),
    .sum (sum[2])
);

FA fa3 (
    .a   (x_in[3]),
    .b   (y_in[3]),
    .cin (c3),
    .cout(c_out),
    .sum (sum[3])
);



endmodule