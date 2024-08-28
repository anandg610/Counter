module mux16_tb();
reg [15:0] in;
reg [3:0]s;
wire out;

mux16_1 DUT(in,s,out);

initial
begin
$monitor($time,"in=%h,s=%h,out=%b",in,s,out);
#5 in=16'h50ea; s=4'ha;
#5 s=4'h7;
#5 s=4'hf;
#5 s=4'h3;
#5 $finish;
end
endmodule 
