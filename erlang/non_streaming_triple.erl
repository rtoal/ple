% First line is ignored when running with escript
main(_) ->
  [io:format("~p, ~p, ~p~n", [A,B,C]) ||
    C <- lists:seq(1,40),
    B <- lists:seq(1,C),
    A <- lists:seq(1,B),
    A*A + B*B == C*C].
