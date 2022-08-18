% reach/2
direct_road(brugge, ghent).
direct_road(ghent, antwerp).
direct_road(ghent, brussels).
direct_road(antwerp, brussels).
direct_road(hasselt, leuven).
direct_road(brussels, leuven).
direct_road(mons, brussels).
direct_road(mons, namur).
direct_road(namur, liege).
direct_road(bastogne, liege).

reach(A,B) :-
    direct_road(A,B).

reach(A,B) :-
    direct_road(A,C),
    reach(C,B).
