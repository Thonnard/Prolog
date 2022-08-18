% sort/2

sort(List,List) :-
    is_sorted(List).

sort(List,ListSorted) :-
    not(is_sorted(List)),
    switch_unsorted(List, Res),
    sort(Res,ListSorted).

switch_unsorted([], []).
switch_unsorted([X], [X]).
switch_unsorted([X, Y|List], [Y,X|List]):-
	X > Y.
switch_unsorted([X, Y|List], [X|Rlist]):-
	X =< Y,
	switch_unsorted([Y|List],Rlist).

is_sorted([]).
is_sorted([_]).
is_sorted([A,B|Tail]) :-
    A =< B,
    is_sorted([B|Tail]).



% sortDL/2 (sort using different lists).

sortDL(Us,S) :- 
    qs_dl(Us, S-T), 
    T=[].
    
qs_dl([], X-X).

qs_dl([H|T], A-D) :-
    split(H,T,Sm,Bi),
    qs_dl(Sm, A-B),
    qs_dl(Bi, C-D),
    B = [H|C].
   
   
split(_X,[],[],[]).

split(X,[Y|Tail],[Y|Small],Big) :- 
    Y @< X, 
    split(X,Tail,Small,Big).
    
split(X,[Y|Tail],Small,[Y|Big]) :- 
    X @< Y, 
    split(X,Tail,Small,Big).
