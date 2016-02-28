% First line is ignored when running with escript
main(_) ->
  17 = abs(-17),
  dog = element(2, {cat, dog, rat, bat}),
  78.0 = float(78),
  "22.1300" = float_to_list(22.13, [{decimals, 4}]),
  Dogs = [rex, sparky, spike],
  rex = hd(Dogs),
  [sparky, spike] = tl(Dogs),
  3 = length(Dogs).
