% First line is ignored when running with escript
main(_) ->
  Max = 1000,
  Printer = spawn(printer, print_server, []),
  Counter = spawn(counter, run, [self(), Max-1]),
  lists:foreach(
    fun (N) ->
      spawn(prime_printer, print_if_prime, [N, Printer, Counter])
    end,
    lists:seq(2, Max)),
  receive done -> io:format("done~n") end.
