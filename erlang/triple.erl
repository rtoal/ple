% First line is ignored when running with escript
main(_) ->
  lists:foreach(fun (C) ->
    lists:foreach(fun (B) ->
      lists:foreach(fun (A) ->
        case A*A + B*B == C*C of
          true -> io:format("~p, ~p, ~p~n", [A,B,C]);
          _ -> skip
        end
      end, lists:seq(1,B))
    end, lists:seq(1,C))
  end, lists:seq(1,50)).
