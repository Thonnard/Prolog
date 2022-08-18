% member/2

member(X, [X|_]).

member(X, [_|T]) :-
    member(X,T).
