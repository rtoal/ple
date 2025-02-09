module Triple;
  integer a, b, c;
  initial
    for (c = 1 ; c < 41 ; c++)
      for (b = 1 ; b < c ; b++)
        for (a = 1 ; a < b ; a++)
          if (a * a + b * b == c * c)
            $display("%0d, %0d, %0d", a, b, c);
endmodule