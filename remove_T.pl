% remove/3 (remove T from a list)

remove(_, [], []).

remove(T, [T|Tail], Tail).

remove(T, [H|Tail], [H|NewTail]) :-
    remove(T, Tail, NewTail).
