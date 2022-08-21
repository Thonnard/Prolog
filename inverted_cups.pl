% solution to inverted cups puzzle

/* 
In a game, exactly six inverted cups stand side by side in a straight line, and each has exactly one ball under it. 
The cups are numbered consecutively from 1 through 6. Each of the balls has a different color: green, magenta, 
orange, purple, red, and yellow. Suppose you know that:
The magenta ball is under cup 1.
The green ball is under cup 5.
The purple ball is under a lower-numbered cup than the orange ball.
The red ball is under a cup immediately adjacent to the cup under which the magenta ball is hidden.
Write a CLP-program to find out which ball is under which cup. Are there multiple possibilities? 
*/

:- use_module(library(clpfd)).

config(L) :-
    L= [G,M,O,P,R,_Y], % G=number of cup with Green ball, ... , no information about Yellow ball
    L ins 1..6,
    all_different(L),
    M #= 1,
    G #= 5,
    P #< O,
    R #= M + 1 #<==> B1,
    R #= M - 1 #<==> B2,
    B1 + B2 #= 1,
    labeling([], L).

% ?- config(L).
