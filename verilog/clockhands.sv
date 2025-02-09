module ClockHands;
  integer i, t, h, m, s;
  function reg [1:2*8] pad;
    input integer n;
    reg [1:2*8] format;
    begin
      format[1:8] = n / 10 + 48;
      format[9:16] = n % 10 + 48;
      pad = format;
    end
  endfunction
  
  initial begin
    for (i = 0 ; i < 11 ; i++) begin
      t = (43200 * i + 21600) / 11;
      h = t / 3600;
      m = t / 60 % 60;
      s = t % 60;
      $display("%s:%s:%s", pad(h ? h : 12), pad(m), pad(s));
    end
  end
endmodule