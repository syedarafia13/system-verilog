//testbench of mux2_1
`timescale 1ns/1ps
module top;
  
initial begin
  $dumpfile("test.vcd");
  $dumpvars(1);
end

wire out;
reg d0, d1, s;
mux2_1 name(.Y(out), .D0(d0), .D1(d1), .S(s));
  
initial begin
  d0=1'b0;
  d1=1'b0;
  s=1'b0;
#100 $finish;
end
  
always #40 d0=~d0;
always #20 d1=~d1;
always #10 s=~s;
always@(d0 or d1 or s)
$monitor("At time = %t, Output = %d", $time, out);
endmodule;