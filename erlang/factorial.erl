% First line is ignored when running with escript
factorial(N) -> factorial(N, 1).
factorial(0, Acc) -> Acc;
factorial(N, Acc) -> factorial(N-1, Acc*N).

main(_) ->
  1 = factorial(0),
  1 = factorial(1),
  2 = factorial(2),
  6 = factorial(3),
  24 = factorial(4),
  120 = factorial(5).
