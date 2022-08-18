% last/2 (get the last element of a list)

last([], []).

last([X|[]],X).

last([_|T], X) :-
    last(T,X).
