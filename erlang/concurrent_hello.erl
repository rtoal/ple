% First line is ignored when running with escript
main(_) ->
  Main = self(),
  spawn(fun() -> Main ! "Hello" end),
  receive
    S -> io:format("~s\n", [S])
  end.
