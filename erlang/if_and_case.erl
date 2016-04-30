% First line is ignored when running with escript
main(_) ->
  X = 38,

  Temperature1 = case X of
    _ when X < 0 -> cold;
    _ when X < 20 -> cool;
    _ when X < 45 -> fine;
    _ -> hot
  end,

  Temperature2 = if
    X < 0 -> cold;
    X < 20 -> cool;
    X < 45 -> fine;
    true -> hot
  end,

  % Test
  [fine, fine] = [Temperature1, Temperature2].
