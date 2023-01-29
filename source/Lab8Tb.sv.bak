`timescale 1 ns / 100 ps
module Lab8Tb;
logic CLOCK_50;
logic [3:0] KEY;
logic [2:0] SW;
logic [6:0] HEX0;
logic [6:0]	HEX1;
logic [6:0]	HEX2;
logic [6:0]	HEX3;
logic [6:0]	HEX4;
logic [6:0]	HEX5;
logic ADC_CONVST;
logic ADC_DIN;
logic ADC_DOUT;
logic ADC_SCLK;

Lab8 U0(.*);
localparam CLK_PERIOD = 20;
always #(CLK_PERIOD/2) CLOCK_50 = !CLOCK_50;
initial begin
    CLOCK_50 = 0;
    KEY[0] = 1'b0;
    KEY[1] = 1'b1;
    KEY[2] = 1'b1;
    KEY[3] = 1'b1;
    SW[2:0] = 3'b001;

#100     KEY[0] = 1'b1;

#50000   $stop;
end

endmodule