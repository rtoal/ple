ss([], 0).
ss([H|T],S) :- H rem 2 =:= 1, ss(T,S).
ss([H|T],S) :- H rem 2 =\= 1, ss(T,S1), S is S1 + H * H.
