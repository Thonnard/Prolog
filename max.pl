% max/3

max(A,B,A) :- A > B, !.

max(_,B,B).
