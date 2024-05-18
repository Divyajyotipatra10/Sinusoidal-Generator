module avg(
    input clk,dataeve,dataodd,reset,
    output [7:0]sineout,
    output [7:0]cosout,
    output reg [7:0]avgout
    );
    sinewave Seve(clk,dataeve,reset,sineout);
    coswave Codd(clk,dataodd,reset,cosout);
    always @(posedge clk)
    begin
        avgout=(sineout+cosout);
    end
endmodule
