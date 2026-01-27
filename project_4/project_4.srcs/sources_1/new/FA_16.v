module FA_16bit (
    input  [15:0] x_in,
    input  [15:0] y_in,
    input         c_in,
    output [15:0] sum,
    output        c_out
);

    wire [14:0] c;   // 내부 캐리 체인 (c[0]~c[14])

    // bit 0
    FA fa0 (
        .a   (x_in[0]),
        .b   (y_in[0]),
        .cin (c_in),
        .cout(c[0]),
        .sum (sum[0])
    );

    // bit 1 ~ bit 14
    FA fa1 (
        .a   (x_in[1]),
        .b   (y_in[1]),
        .cin (c[0]),
        .cout(c[1]),
        .sum (sum[1])
    );

    FA fa2 (
        .a   (x_in[2]),
        .b   (y_in[2]),
        .cin (c[1]),
        .cout(c[2]),
        .sum (sum[2])
    );

    FA fa3 (
        .a   (x_in[3]),
        .b   (y_in[3]),
        .cin (c[2]),
        .cout(c[3]),
        .sum (sum[3])
    );

    FA fa4 (
        .a   (x_in[4]),
        .b   (y_in[4]),
        .cin (c[3]),
        .cout(c[4]),
        .sum (sum[4])
    );

    FA fa5 (
        .a   (x_in[5]),
        .b   (y_in[5]),
        .cin (c[4]),
        .cout(c[5]),
        .sum (sum[5])
    );

    FA fa6 (
        .a   (x_in[6]),
        .b   (y_in[6]),
        .cin (c[5]),
        .cout(c[6]),
        .sum (sum[6])
    );

    FA fa7 (
        .a   (x_in[7]),
        .b   (y_in[7]),
        .cin (c[6]),
        .cout(c[7]),
        .sum (sum[7])
    );

    FA fa8 (
        .a   (x_in[8]),
        .b   (y_in[8]),
        .cin (c[7]),
        .cout(c[8]),
        .sum (sum[8])
    );

    FA fa9 (
        .a   (x_in[9]),
        .b   (y_in[9]),
        .cin (c[8]),
        .cout(c[9]),
        .sum (sum[9])
    );

    FA fa10 (
        .a   (x_in[10]),
        .b   (y_in[10]),
        .cin (c[9]),
        .cout(c[10]),
        .sum (sum[10])
    );

    FA fa11 (
        .a   (x_in[11]),
        .b   (y_in[11]),
        .cin (c[10]),
        .cout(c[11]),
        .sum (sum[11])
    );

    FA fa12 (
        .a   (x_in[12]),
        .b   (y_in[12]),
        .cin (c[11]),
        .cout(c[12]),
        .sum (sum[12])
    );

    FA fa13 (
        .a   (x_in[13]),
        .b   (y_in[13]),
        .cin (c[12]),
        .cout(c[13]),
        .sum (sum[13])
    );

    FA fa14 (
        .a   (x_in[14]),
        .b   (y_in[14]),
        .cin (c[13]),
        .cout(c[14]),
        .sum (sum[14])
    );

    // bit 15 (마지막)
    FA fa15 (
        .a   (x_in[15]),
        .b   (y_in[15]),
        .cin (c[14]),
        .cout(c_out),
        .sum (sum[15])
    );

endmodule
