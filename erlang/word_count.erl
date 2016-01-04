% First line is ignored when running with escript
main(_) ->
  print_counts(process_lines(orddict:new())).

process_lines(Counts) ->
  case io:get_line("") of
    eof -> Counts;
    Line ->
      Options = [global,{capture,first,list}],
      Words = case re:run(string:to_lower(Line), "[a-z']+", Options) of
        {match, Captures} -> lists:map(fun erlang:hd/1, Captures);
        nomatch -> []
      end,
      process_lines(lists:foldl(
        fun (W,D) -> orddict:update_counter(W,1,D) end, Counts, Words))
  end.

print_counts(Counts) ->
  orddict:map(fun (K,V) -> io:format("~s ~p~n", [K,V]) end, Counts).
