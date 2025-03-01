Enum.each 0..10, fn i ->
  t = div(43200 * i + 21600, 11)
  [h, m, s] = [div(t, 3600), rem(div(t, 60), 60), rem(t, 60)]
  IO.puts to_string(
    :io_lib.format("~2..0b:~2..0b:~2..0b",
    [if h == 0 do 12 else h end, m, s]))
end
