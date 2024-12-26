Enum.each 0..10, fn i ->
  t = trunc((i + 0.5) * 43200 / 11)
  h = trunc(t / 3600)
  m = rem(t, 3600)
  IO.puts to_string(:io_lib.format("~2..0b:~2..0b:~2..0b",
                      [if h == 0 do 12 else h end, trunc(m / 60), rem(m, 60)]))
end
