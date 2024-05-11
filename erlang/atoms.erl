% A self-testing script demonstrating atoms and variables
successor(X) -> X + 1.

main(_) ->
  Dozen = 12,                       % variables start with uppercase
  true = is_atom(hello),            % atoms start with lowercase
  true = is_atom(successor),        % defined functions are atoms
  true = is_integer(Dozen),         % variables refer to their value
  true = is_integer(successor(1)),  % so do function calls
  io:format("All tests passed\n").