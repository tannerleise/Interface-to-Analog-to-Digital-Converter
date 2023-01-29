module ChannelSelect(
    input [2:0]SW,
    output logic [11:0] chansel //This is the "register" that essentially holds the value to be sent to the DIN

);


`define numbers
`include "parameters.svh"

//This is going to determine the bit string for what we are going to send to the DIN
//Then according to the count value we will output the proper position in the string
//We only want to load this when ADC_CONVST is high

always_comb
case (SW[2:0])
    3'b000: chansel[11:0] = chan_zero;
    3'b001: chansel[11:0] = chan_one;
    3'b010: chansel[11:0] = chan_two;
    3'b011: chansel[11:0] = chan_three;
    3'b100: chansel[11:0] = chan_four;
    3'b101: chansel[11:0] = chan_five;
    3'b110: chansel[11:0] = chan_six;
    3'b111: chansel[11:0] = chan_seven;
    default chansel[11:0] = chan_zero;
endcase
endmodule