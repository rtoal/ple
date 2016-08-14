% First line is ignored when running with escript
main(_) ->
  lists:foreach(fun (I) ->
    P = trunc((I + 0.5) * 43200 / 11),
    H = trunc(P / 3600),
    M = trunc(P rem 3600),
    io:format("~2..0b:~2..0b:~2..0b~n", [
        trunc(case H of 0->12;_->H end), trunc(M/60), trunc(M rem 60)])
  end, lists:seq(0,10)).
