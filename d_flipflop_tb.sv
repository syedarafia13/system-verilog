//test bench for d flip flop
`timescale 1ns/1ps
module dff_behavior;
initial begin
  $dumpfile("test.vcd");
  $dumpvars(1);
end
  
reg D, CLK,reset;
wire Q, QBAR;

dff_behavior dut(.q(Q), .qbar(QBAR), .clear(reset), .d(D), .clk(CLK)); 

$monitor("At time = %t, CLK = %d, D = %d, reset = %d, Q = %d, QBAR = %d", $time, CLK,D,reset,Q,QBAR);

initial begin
  clk=0;
     forever #10 clk = ~clk;  
end 

 reset=1; D <= 0;
 #100; reset=0; D <= 1;
 #100; D <= 0;
 #100; D <= 1;

endmodule