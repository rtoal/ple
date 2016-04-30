% First line is ignored when running with escript
main(_) ->
  Printer = spawn(printer, print_server, []),
  lists:foreach(
    fun (N) ->
      spawn(prime_printer, print_if_prime, [N, Printer])
    end,
    lists:seq(2, 1000)),
  timer:sleep(5000).
