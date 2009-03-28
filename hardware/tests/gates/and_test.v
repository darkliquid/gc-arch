module and_gate_test;

  reg a, b;
  wire out;

  and_gate test_and_gate (out, a, b);

  initial begin
    $monitor ("a = %b b = %b out = %b", a, b, out);
    a = 0;
    b = 0;    
    #1 a = 1;
    #1 b = 1;
    #1 a = 0;
    #1 $finish;
  end

endmodule
