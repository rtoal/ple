% First line ignored when using escript
main(_) ->
  Down_By_Two = count_down_by(2),
  Down_By_Two(20).

count_down_by(Delta) ->
  fun Count(N) ->
    if N > 0 ->
      io:format("~p~n", [N]),
      Count(N - Delta);
    true ->
      io:format("done~n")
    end
  end.

