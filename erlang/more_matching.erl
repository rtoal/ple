% Pattern matching in function clauses
area({circle, R}) -> math:pi() * R * R;
area({rectangle, W, L}) -> W * L.

% Pattern matching in case expressions
roll() ->
  case {rand:uniform(6), rand:uniform(6)} of
    {D, D} -> {"You rolled doubles", D+D};
    {X1, Y1} -> {"Uninteresting roll", X1+Y1}
  end.

main(_) ->
  40 = area({rectangle, 8, 5}),
  {_, _} = roll().
