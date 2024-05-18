module sintest(

    );
    reg clk,dataeve,dataodd,reset;
    wire [7:0]avgout;
    wire [7:0]sineout;
    wire [7:0]cosout;
    avg DUT(clk,dataeve,dataodd,reset,sineout,cosout,avgout);
    initial begin
    clk<=1'b0;
    forever #10 clk<=~clk;
    end 
    initial begin
    reset<=1'b1;
    dataeve<=1'b0; dataodd<=1'b0;
    #20 reset<=1'b0;
    #1050 dataeve<=1'b1; dataodd<=1'b0;
    #1050 dataeve<=1'b0; dataodd<=1'b1;
    #1050 dataeve<=1'b1; dataodd<=1'b1;
    #2000 $stop;
    end
endmodule
