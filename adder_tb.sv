module adder_test
(output logic  a, b, ci,
input  logic  sum, co);
timeunit 1ns; timeprecision 1ns;

initial begin
      a = 0;
      b = 0;             
      ci = 0;            
      #10 a = 1;          
      #10 b = 1;          
      #10 ci = 1;         
      #10 $stop();
      #1000 $finish();
    end

initial begin
      $timeformat(-9,2," ns",10);
      $monitor("At %t: \t a=%b  b=%b  ci=%b  sum=%b  co=%b",
               $realtime, a, b, ci, sum, co);
    end
endmodule