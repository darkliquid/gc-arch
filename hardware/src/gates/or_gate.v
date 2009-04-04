module or_gate(out, a, b);
  input a, b;
  output out;

  wire  a, b;          // input registers
  wire  tmp_a, tmp_b, out;      // tmp for first nand output, out for final value
  
  not_gate a_notter (tmp_a, a);  // NOTs a, storing in tmp_a
  not_gate b_notter (tmp_b, b);  // NOTs b, storing in tmp_b
  nand(out, tmp_a, tmp_b);     // nands a with b and stores output in out
endmodule
