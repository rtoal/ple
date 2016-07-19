plays(kira,waterpolo).
plays(colette,diving).
plays(emily,waterpolo).
plays(olivia,diving).
plays(michelle,piano).
club(colette,rosebowl).
club(kira,rosebowl).
club(emily,rosebowl).

diver(X) :- plays(X,diving).
teammate(X,Y) :- plays(X,Z), plays(Y,Z), club(X,C), club(Y,C), X\=Y.
