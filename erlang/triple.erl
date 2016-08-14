% First line is ignored when running with escript
main(_) ->
  lists:foreach(fun (C) ->
    lists:foreach(fun (B) ->
      lists:foreach(fun (A) ->
        if
          A*A + B*B == C*C -> io:format("~p, ~p, ~p~n", [A,B,C]);
          true -> ok
        end
      end, lists:seq(1,B))
    end, lists:seq(1,C))
  end, lists:seq(1,40)).
