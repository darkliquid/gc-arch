module xor_gate(out, a, b);
  input a, b;
  output out;

  wire  a, b;                   // input registers
  wire  x, y, z;
  wire  out;

  nand(x, a, b);    // nand a and b together
  nand(y, a, x);    // nand a with result of nand(a,b)
  nand(z, x, b);    // nand b with result of nand(a,b)
  nand(out, y, z);  // nand the two above two give 'out'
endmodule
