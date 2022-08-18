% nthElement/3 

nthElement([H|_],1,H) :- !.

nthElement([_|T],N,H) :-
    N > 1, % prevent loops
    N1 is N-1,
    nthElement(T,N1,H).
