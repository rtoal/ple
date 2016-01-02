% First line is ignored when running with escript
main([S]) ->
  lists:foreach(fun(X) -> io:format("~s~n", [X]) end, permute(S));
main(_) ->
  io:format("Exactly one argument is required\n").

permute([]) -> [""];
permute(S) -> [[H|T] || H<-S, T<-permute(S--[H])].
