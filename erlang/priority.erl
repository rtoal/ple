% First line ignored when running with escript
reader() ->
%  receive
%    ready ->
      receive
        {high, I} -> io:format("High ~p~n", [I]);
        {medium, I} -> io:format("Medium ~p~n", [I]);
        {low, I} -> io:format("Low ~p~n", [I])
      end,
      reader().
 % end.

priority(I) ->
  lists:nth(I rem 3 + 1, [high, medium, low]).

main(_) ->
  P = spawn(fun() -> reader() end),
  lists:foreach(fun (I) ->
    P ! {priority(I), I}
  end, lists:seq(1,10)),
  %P ! ready,
  timer:sleep(5000).


