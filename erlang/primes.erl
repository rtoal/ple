% First line is ignored when running with escript
main(_) ->
  Max = 1000,
  Printer = spawn(printer, print_server, [self()]),
  lists:foreach(
    fun (N) ->
      spawn(prime_checker, is_prime, [N, Printer])
    end,
    lists:seq(2, Max)),
  wait(Max-1).

wait(0) -> io:format("~n");
wait(N) -> receive _ -> wait(N-1) end.
