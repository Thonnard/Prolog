% scalarMultiplication/3

scalarMultiplication(_, [], []).

scalarMultiplication(X,[H1|T1],[H2|T2]) :-
    H2 is H1 * X,
    scalarMultiplication(X, T1,T2).
