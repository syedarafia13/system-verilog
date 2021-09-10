// design of d_flipflop
module nand_gate(c,a,b); 
input a,b; 
output c; 
assign c = ~(a&b); 
endmodule

module not_gate(f,e); 
input e; 
output f; 
assign f= ~e; 
endmodule

module dff_struct(q,qbar,d,clk);
input d,clk; 
output q, qbar; 
not_gate not1(dbar,d); 
nand_gate nand1(x,clk,d); 
nand_gate nand2(y,clk,dbar); 
nand_gate nand3(q,qbar,y); 
nand_gate nand4(qbar,q,x); 
endmodule