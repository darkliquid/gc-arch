module multiplex_test;

  reg a, b, select;
  wire out;

  multiplex test_multiplex (out, select, a, b);

  initial begin
    if (! $value$plusargs("a=%b", a) && $value$plusargs("b=%b", b) && $value$plusargs("s=%b", select) ) begin
      $display("ERROR: please specify +a=<value> +b=<value> +s=<value> to start.");
      $finish;
    end

    #1 $display("out=%b", out);
    #1 $finish;
  end

endmodule
