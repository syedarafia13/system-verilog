//design of mux2_1 
module and_gate(output a, input b, c);
assign a = b&c;
endmodule

module not_gate(output d, input e);
assign d = ~e;
endmodule

module or_gate(output l, input m, n);
assign l = m|n;
endmodule

module mux2_1(Y, D0, D1, S);
output Y;
input D0, D1, S;
wire T1, T2, T3;
and_gate o1(T1, D1, S);
not_gate o2(T2, S);
and_gate o3(T3, D0, T2);
or_gate o4(Y, T1, T3);
endmodule