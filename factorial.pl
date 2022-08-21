% factorial/2

:- use_module(library(clpr)).

fa(0.0,1.0).  % you NEED to use reals! 0.0 instead of 0

fa(N,X) :- 
    {N > 0, N1 = N-1, X = N * Y},  % first all the constraints (also X = N * Y), then recursive call
    fa(N1,Y).
    
% ?- fa(6,F).
