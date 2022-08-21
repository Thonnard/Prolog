% N Queens Puzzle
% source: https://www.swi-prolog.org/pldoc/man?section=clpfd-n-queens

% nQueens/2

:- use_module(library(clpfd)).

nQueens(N, Ys) :-
    length(Ys, N),
    Ys ins 1..N,
    safe_queens(Ys),
    labeling([],Ys).



safe_queens([]).

safe_queens([Y|Ys]) :- 
    safe_queens2(Ys, Y, 1), 
    safe_queens(Ys).



safe_queens2([], _, _).

safe_queens2([Y|Ys], Y0, D0) :-
    Y0 #\= Y,
    abs(Y0 - Y) #\= D0,
    D1 #= D0 + 1,
    safe_queens2(Ys, Y0, D1).


% ?- nQueens(8, Solution).
% ?- time((nQueens(20, Solution), labeling([ff], Solution))).
