Enum.each 0..10, fn i ->
  {:ok, datetime} = DateTime.from_unix(div(43200 * i + 21600, 11))
  IO.puts to_string(
    :io_lib.format("~2..0b:~2..0b:~2..0b",
    [if datetime.hour == 0 do 12 else datetime.hour end, datetime.minute, datetime.second]))
end
