% leftVisible/2

leftVisible(List,Count):-
    left_acc(List,Count,0,0).


left_acc([], Count,_,Count).

left_acc([H|T],Count,MaxSoFar,Acc):-
    gt(H,MaxSoFar),
    NewMax is H,
    NewAcc is Acc + 1,
    left_acc(T,Count,NewMax,NewAcc).

left_acc([H|T],Count,MaxSoFar,Acc):-
    \+gt(H,MaxSoFar),
    left_acc(T,Count,MaxSoFar,Acc).

gt(X,Y):-
    X > Y.
