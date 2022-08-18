% filter/3

filter(Func,List,Filtered) :-
    findall(E, (member(E,List), G =.. [Func, E], call(G)), Filtered).
    
% example functions
positive(X) :- X >= 0.
negative(X) :- X < 0.
biggerthan5(X) :- X > 5.
betweenmin2plus5(X) :- X > -3, X =< 5.


% ?- filter(positive,[-3,3,5,-4,3,-4,-8,-22,11], F).
% ?- filter(negative,[-3,3,5,-4,3,-4,-8,-22,11], F).
% ?- filter(biggerthan5,[-3,3,5,-4,3,-4,-8,-22,11], F).
% ?- filter(betweenmin2plus5,[-3,3,5,-4,3,-4,-8,-22,11], F).
