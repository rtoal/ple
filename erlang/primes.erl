% A command line application to print primes in 2..1000.
main(_) ->
  Max = 1000,
  lists:foreach(
    fun (N) ->
      spawn(prime_checker, is_prime, [N, self()])
    end,
    lists:seq(2, Max)),
  wait(Max-1).

wait(0) -> io:format("~n");
wait(N) -> receive _ -> wait(N-1) end.
