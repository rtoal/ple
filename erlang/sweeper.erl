% First line ignored when running with escript
sweep(42) ->
  io:format("BAM~n"),
  exit(destroyed);
sweep(_) ->
  io:format("."),
  timer:sleep(10),
  sweep(rand:uniform(100)).

launch() ->
  process_flag(trap_exit, true),
  receive
    start ->
      register(sweeper, spawn_link(fun () -> sweep(0) end));
    {'EXIT', From, Reason} ->
      io:format("Sweeper ~p ~p, starting new one~n", [From, Reason]),
      self() ! start
  end,
  launch().

main(_) ->
  register(launcher, spawn(fun () -> launch() end)),
  launcher ! start,
  timer:sleep(5000),
  io:format("~nSimulation over~n").
