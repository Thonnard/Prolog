% reverse/2

reverse(L,Rev) :-
    rev_acc(L, Rev, []).


rev_acc([], Res, Res).

rev_acc([H|T], Res, Acc) :-
    rev_acc(T, Res, [H|Acc]).

