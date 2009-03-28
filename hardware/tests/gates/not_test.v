module not_gate_test;

  reg in;
  wire out;

  not_gate test_not_gate (out, in);

  initial begin
    in = 0;

    if (! $value$plusargs("in=%b", in)) begin
      $display("ERROR: please specify +in=<value> to start.");
      $finish;
    end


    #1 $display("out=%b", out);
    #1 $finish;
  end

endmodule

