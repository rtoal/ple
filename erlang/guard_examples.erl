%% Returns whether X is (1) Y or (2) is in the list Y
at (X, Y) when is_list(Y) -> lists:member(X, Y);
at (X, Y) -> X =:= Y.

grade(Score) when Score >= 90 -> 'A';
grade(Score) when Score >= 80 -> 'B';
grade(Score) when Score >= 70 -> 'C';
grade(Score) when Score >= 60 -> 'D';
grade(_) -> 'F'.

main(_) ->
  ['C','A','F','B','D'] = [grade(S) || S <- [71,99,7,80,60]],
  true = at(dog, dog),
  true = at(rat, [dog, rat, cat]),
  false = at(bat, [dog, rat, cat]).
