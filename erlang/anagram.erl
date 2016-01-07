% First line is ignored when running with escript
main([S]) ->
  lists:foreach(fun(X) -> io:format("~s~n", [X]) end, permutations(S));
main(_) ->
  io:format("Exactly one argument is required\n").

permutations([]) -> [""];
permutations(S) -> [[H|T] || H<-S, T<-permutations(S--[H])].
