`timescale 10us/10ns

module ClockGenerator(
    input       		c50m,

    output      reg		pulse1,
    output      reg		pulse2
);

    // we are looking to divide a 50MHz clock with a period of 10uS(10E-7s)
    // all we need to know now is the number of 10uS clocks required to make our timers
    // If this seems sketcky look up dimensional analysis on the intenet

    //      1 s           10 000 000 us      1 Clock             
    // ======= X =========== X ========    = 100 000 Clocks per pulse
    //                                 1 ns                 10 us           

    //     1 ms           1000 us        1 Clock             
    // ======= X  ======== X ========    = 100 Clocks per pulse
    //                            1 ms               10 us           

    //We'll need to count to 100k so the smallest register that can do that is
    // log base 2 of 100k = 16.6 so a 17bit counter will do. because the  smaller timer
    // is an even divisor of the first we can use use one register.
    reg         [17:0]          Counter100k;

    //run off input clock.
    always @(posedge c50m)
       begin
            //| reset if counter hits desired value for timing
            if(Counter100k == 17'd100_000)
            begin
                 Counter100k = 0;
                 //| reset 100k clock at rollover
                 pulse1 = 0;
            end
            else Counter100k++;

            //| trigger pulse 1
            if(Counter100k == 17'd099_990) pulse1 = 1'b1;

            //| Fancy math allows using the same register because the frequeny of both signals is base 10;
            if((Counter100k-10)%100 == 0) pulse2 = 1'b1;        //trigger start.
            if((Counter100k   )%100 == 0) pulse2 = 1'b0;        //trigger end.
       end

endmodule