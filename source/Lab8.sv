module Lab8(
	//////////// CLOCK //////////
	input 		          		CLOCK_50,
	//////////// KEY //////////
	input 		     [3:0]		KEY,
	//////////// SW //////////
	input 		     [2:0]		SW,
	//////////// Seg7 //////////
	output		     [6:0]		HEX0,
	output		     [6:0]		HEX1,
	output		     [6:0]		HEX2,
	output		     [6:0]		HEX3,
	output		     [6:0]		HEX4,
	output		     [6:0]		HEX5,
	//////////// ADC //////////
	output		          		ADC_CONVST,
	output		          		ADC_DIN,
	input 		          		ADC_DOUT,
	output		          		ADC_SCLK
);
logic pll_locked;
logic MHzclk1;

logic [4:0] count;
logic [11:0] HEXOUT;
logic [15:0] bcd_out;

pll U0(.refclk(CLOCK_50), .rst(1'b0), .outclk_0(MHzclk1), .locked(pll_locked));
count U1(.clock(MHzclk1), .reset_n(KEY[0]), .count(count), .ADC_CONVST(ADC_CONVST), .SCLK(ADC_SCLK));
data U2(.SCLK(ADC_SCLK), .SW(SW[2:0]), .ADC_CONVST(ADC_CONVST), .ADC_DOUT(ADC_DOUT), .ADC_DIN(ADC_DIN), .HEXOUT(HEXOUT));
bin2bcd U3(.binary_in(HEXOUT), .bcd_out(bcd_out));
Hexlights U4(.digit(bcd_out[15:12]), .f(HEX3));
Hexlights U5(.digit(bcd_out[11:8]), .f(HEX2));
Hexlights U6(.digit(bcd_out[7:4]), .f(HEX1));
Hexlights U7(.digit(bcd_out[3:0]), .f(HEX0));
Hexlights U8(.digit(), .f(HEX4));
Hexlights U9(.digit(), .f(HEX5));

endmodule