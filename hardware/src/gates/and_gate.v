module and_gate(out, a, b);
  input a, b;
  output out;

  wire  a, b;          // input registers
  wire  tmp, out;      // tmp for first nand output, out for final value
  
  nand(tmp, a, b);     // nands a with b and stores output in tmp
  not_gate nand_notter (out, tmp);  // NOTs tmp, storing in out 
endmodule
  
