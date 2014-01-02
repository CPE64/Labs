module CPE64Lab4Demo1_top(
    input                       CLOCK_50,   //brought in for debug use

    input           [7:0]       GPIO0,
    input           [1:0]       GPIO0_IN,

    output          [7:0]       LED
);

    ClockGenerator clockgen(
        .c50m(CLOCK_50),

        .pulse1(),
        .pulse2()
    );

endmodule
