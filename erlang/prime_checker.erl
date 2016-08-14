-module(prime_checker).
-export([is_prime/2]).

is_prime(N, Observer) ->
  (fun Check(D) ->
    if
      D * D > N ->           % No more divisors
        Observer ! N;
      N rem D == 0 ->        % Composite
        Observer ! false;
      true ->                % Keep looking
        Check(D+1)
    end
  end)(2).
