//The input side works, need to upload to the board to check the output side of things :)
module data(
    input SCLK,
    input [2:0]SW,
    input ADC_CONVST,
    input ADC_DOUT,
    output logic ADC_DIN,
    output logic [11:0] HEXOUT
);

logic [11:0] chansel; //This is the "register" that essentially holds the value to be sent to the DIN
logic [11:0] regout;

logic [11:0] select;



ChannelSelect U0(.SW(SW), .chansel(chansel));

always_ff @(negedge SCLK, posedge ADC_CONVST)
begin
    if(ADC_CONVST)
    begin
    select <= chansel;
    end

    else
    begin
    select[11:0] <= {select[10:0], 1'b0};
    end
end

always_ff @ (posedge SCLK)
begin
    regout[11:0] <= {regout[10:0], ADC_DOUT};
end

always_ff @ (posedge ADC_CONVST)
begin
    HEXOUT[11:0] <= regout[11:0];
end

assign ADC_DIN = select[11];

endmodule