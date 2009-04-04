module or_gate_test;

  reg a, b;
  wire out;

  or_gate test_or_gate (out, a, b);

  initial begin
    if (! $value$plusargs("a=%b", a) && $value$plusargs("b=%b", b) ) begin
      $display("ERROR: please specify +a=<value> +b=<value> to start.");
      $finish;
    end

    #1 $display("out=%b", out);
    #1 $finish;
  end

endmodule
