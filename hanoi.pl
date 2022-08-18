% Hanoi tower puzzle
% source: https://www.tutorialspoint.com/prolog/prolog_towers_of_hanoi_problem.htm


% move(N, Source, Target, middle).
% N = number of disks
move(1,X,Y,_) :-
    write('Move top disk from '), write(X), write(' to '), write(Y), nl. 

move(N,X,Y,Z) :-
    N>1,
    M is N-1,
    move(M,X,Z,Y),
    move(1,X,Y,_),
    move(M,Z,Y,X).

% ?- move(4,source,target,middle).
