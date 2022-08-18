% listLength/2

listLength(List,Length) :-
    l_acc(List, Length, 0).
    
    
l_acc([], L, L).

l_acc([_|T], L, Acc) :-
    AccNew is Acc + 1,
    l_acc(T, L, AccNew).

