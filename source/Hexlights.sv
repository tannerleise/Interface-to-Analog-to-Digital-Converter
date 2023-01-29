//We'll need to call this 4 times since we need to display 4 different hex displays.
//This call will take the parsed output from the bin2bcd module and output to its respective hex display

module Hexlights(
    input [3:0]digit,
    //Segment Turns on with logic zero and off with logic 1
    output logic [7:0] f
);

always @(*)
case({digit[3:0]})
    4'b0000: f[7:0] = 8'b11000000; //0
    4'b0001: f[7:0] = 8'b11111001; //1
    4'b0010: f[7:0] = 8'b10100100; //2
    4'b0011: f[7:0] = 8'b10110000; //3
    4'b0100: f[7:0] = 8'b10011001; //4
    4'b0101: f[7:0] = 8'b10010010; //5
    4'b0110: f[7:0] = 8'b10000010; //6
    4'b0111: f[7:0] = 8'b11111000; //7
    4'b1000: f[7:0] = 8'b10000000; //8
    4'b1001: f[7:0] = 8'b10011000; //9
    4'b1010: f[7:0] = 8'b10001000; //A (10)
    4'b1011: f[7:0] = 8'b10000011; //b (11)
    4'b1100: f[7:0] = 8'b11000110; //C (12)
    4'b1101: f[7:0] = 8'b10100001; //d (13)
    4'b1110: f[7:0] = 8'b10000110; //E (14)
    4'b1111: f[7:0] = 8'b10001110; //F (15)
    default  f[7:0] = 8'b11111111;
endcase


endmodule