module multiplex(out, select, a, b);
  input a, b, select;
  output out;

  wire  a, b, select;       // input registers
  wire  not_select;
  wire  tmp_a, tmp_b, out;  // tmp for first nand output, out for final value


  not_gate select_invertor (not_select, select);
  and_gate a_ander (tmp_a, a, not_select); // if select=0, out=a
  and_gate b_ander (tmp_b, b, select);     // if select=1, out=b
  or_gate  a_b_orer (out, tmp_a, tmp_b);
  
endmodule
  
