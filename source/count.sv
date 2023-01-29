//Module is Gucci Flip Flops

module count(
    input clock,
    input reset_n,
    output [4:0] count,

    output ADC_CONVST,
    output SCLK

);

logic [4:0] cnt;

logic convst;
logic gate;

always_ff @ (posedge clock, negedge reset_n)
begin 
    if(reset_n == 0)
    cnt <= 0;
    else if(cnt == 15)
    cnt <= 0;
    else
    cnt <= cnt + 1;
end

always_ff @ (posedge clock)
begin
    if(cnt == 0 || cnt == 1)
    begin
        convst <= 1;
    end
    else
        convst <= 0;
end

always_ff @ (negedge clock)
begin
    if(cnt > 2 && cnt <= 14)
        gate <= 1;
    else 
        gate <= 0;

end

assign ADC_CONVST = convst;
assign count = cnt;

assign SCLK = gate & clock;



endmodule