module not_gate(out, in);
  input  in;
  output out;

  wire  in;          // input wire
  wire  out;         // out for final value

  nand(out, in, in); // nands in with in (effectively NOTing it) storing in out
endmodule

