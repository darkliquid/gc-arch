module not_gate_test;

  reg in;
  wire out;

  not_gate test_not_gate (out, in);

  initial begin
    $monitor ("in = %b out = %b", in, out);
    in = 0;
    #1 in = 1;
    #1 $finish;
  end

endmodule

