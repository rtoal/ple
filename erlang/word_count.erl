
main(_) ->
  print_counts(process_line(orddict:new())).

process_line(Counts) ->
  case io:get_line("") of
    eof -> Counts;
    Line -> 
      Words = case re:run(string:to_lower(Line), "[a-z']+", [global,{capture,first,list}]) of
        {match, C} -> [hd(C) || C<-C];                                          
        nomatch -> []                                       
      end,
      NewCounts = lists:foldl(fun(W,D)->orddict:update_counter(W,1,D) end, Counts, Words),
      process_line(NewCounts)
  end.
  
print_counts(Counts) ->
  orddict:map(fun (K,V) -> io:format("~s ~p~n", [K,V]) end, Counts).
