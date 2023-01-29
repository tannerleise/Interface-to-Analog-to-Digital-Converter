//Within this we cover the frist 4 bits, we need to set the bipolar bit and the sleep bit as well, BUT, I don't really know
//what to set them to since the data sheet doesn't really say :/
`ifdef numbers
parameter chan_zero = 12'b100010000000;
parameter chan_one = 12'b110010000000;
parameter chan_two = 12'b100110000000;
parameter chan_three = 12'b110110000000;
parameter chan_four = 12'b101010000000;
parameter chan_five = 12'b111010000000;
parameter chan_six = 12'b101110000000;
parameter chan_seven = 12'b111110000000;

`endif