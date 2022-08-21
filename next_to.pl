% nextTo/2

:- use_module(library(clpfd)).

nextTo(X,Y) :- 
    X #= Y + 1 #<==> B1, 
    Y #= X + 1 #<==> B2, 
    B1 + B2 #= 1,         
    label([X,Y]).
    
    
