% wolf / goat / cabbage puzzle
% source: https://cseweb.ucsd.edu/classes/fa09/cse130/misc/prolog/goat_etc.html

% change from East to West or West to East
change(e,w).
change(w,e).

% possible moves with list [farmer, wolf, goat, cabbage]
% change is needed, otherwise X and Y could unify to goat, ... which is invalid
move([X,   X,Goat,Cabbage],   wolf,[Y,   Y,Goat,Cabbage]) :- change(X,Y).
move([X,Wolf,   X,Cabbage],   goat,[Y,Wolf,   Y,Cabbage]) :- change(X,Y).
move([X,Wolf,Goat,      X],cabbage,[Y,Wolf,Goat,      Y]) :- change(X,Y).
move([X,Wolf,Goat,Cabbage],nothing,[Y,Wolf,Goat,Cabbage]) :- change(X,Y).

% safe moves? at least one of X,Y,Z has to be equal
oneEq(X,X,_).
oneEq(X,_,X).

safe([Man,Wolf,Goat,Cabbage]) :-
    oneEq(Man,Goat, Wolf),
    oneEq(Man,Goat,Cabbage).

% base case: everybody is on the East side, no move needed
solution([e,e,e,e],[]).
% recursive case
solution(Config,[FirstMove|OtherMoves]) :-     
    move(Config,FirstMove,NextConfig),     
    safe(NextConfig),                     
    solution(NextConfig,OtherMoves).

get_solution_wgc :-
    length(X,_),
    solution([w,w,w,w],X),
    write('Path to solution in '),
    length(X,L),
    write(L),
    write(' steps: '),
    write(X).

% ?- get_solution_wgc.
