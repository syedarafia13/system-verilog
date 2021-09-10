`timescale 1ns/1ps
module test;
  
initial begin
  $dumpfile("test.vcd");
  $dumpvars(1);
end

module test
  (output logic a_in, b_in,c_in,
   input logic sum_out,c_out);
  timeunit 1ns;timeprecision 1ns;
  initial begin
    a_in=0;
    b_in=0;
    c_in=0;
    #10ns a_in=1;
    #10ns b_in=1;
    #10ns c_in=1;
    $stop;
    $finish;
  end
  initial
    $monitor("At %d: a=%b b=%b ci=%b sum=%b co=%b",
             $time, a_in,b_in,c_in,sum_out,c_out);
endmodule