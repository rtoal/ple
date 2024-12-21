0.upto 10 do |i|
  t = (i + 0.5) * 43200 / 11
  h, t = t.divmod 3600
  m, s = t.divmod 60
  printf("%02d:%02d:%02d\n", (h == 0 ? 12 : h), m, s)
end