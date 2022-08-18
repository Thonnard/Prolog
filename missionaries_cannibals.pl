% Missionaries and cannibals
% source: https://iamnifras.blogspot.com/2014/07/missionaries-canibal-problem-in-ai.html


% Move commands and descriptions of the move: move_mc(State,NextState,Message)
% State representation: [Missionaries, Cannibals, Position]
move_mc([A,B,left],[C,B,right],'One missionary crosses the river') :-
    A > 0, C is A - 1.
move_mc([A,B,left],[C,B,right],'Two missionaries cross the river') :-
    A > 1, C is A - 2.
move_mc([A,B,left],[C,D,right],'One missionary and One cannibal cross the river') :-
    A > 0, B > 0, C is A - 1, D is B - 1.
move_mc([A,B,left],[A,D,right],'One cannibal crosses the river') :-
    B > 0, D is B - 1.
move_mc([A,B,left],[A,D,right],'Two cannibals cross the river') :-
    B > 1, D is B - 2.
move_mc([A,B,right],[C,B,left],'One missionary returns from the other side') :-
    A < 3, C is A + 1.
move_mc([A,B,right],[C,B,left],'Two missionaries return from the other side') :-
    A < 2, C is A + 2.
move_mc([A,B,right],[C,D,left],'One missionary and One cannibal return from the other side') :-
    A < 3, B < 3, C is A + 1, D is B + 1.
move_mc([A,B,right],[A,D,left],'One cannibal returns from the other side') :-
    B < 3, D is B + 1.
move_mc([A,B,right],[A,D,left],'Two cannibals return from the other side') :-
    B < 2, D is B + 2.

% Legal move definition where B is missionaries and A is cannibals:
legal_mc([B,A,_]) :-
    (A =< B ; B = 0),
    C is 3-A, D is 3-B,
    (C =< D; D = 0).

% Path
% Base case
path([A,B,C],[A,B,C],_,MoveList):-
    output(MoveList).

% Recursive call
path([A,B,C],[D,E,F],Traversed,Moves) :-
    move_mc([A,B,C],[G,H,I],Out),
    legal_mc([G,H,I]), % Don't use this move unless it's safe.
    not(member([G,H,I],Traversed)),
    % not([A,B,C] = [G,H,I]),
    path([G,H,I],[D,E,F],[[G,H,I]|Traversed], [ [[G,H,I],[A,B,C],Out] | Moves ]).

% Messages
output([]).
output([[A,B,String]|T]) :-
    output(T),
    write(B), write(' --> '), write(A), write(': '), write(String), nl.

% Find solution
get_solution_mc :-
    write('Format: [MissionariesLeft, CannibalsLeft, PositionBoat] --> 
        [MissionariesLeft, CannibalsLeft, PositionBoat]: Description'), nl, nl,
    path([3,3,left],[0,0,right],[[3,3,left]],_).
