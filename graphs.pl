link(a,b).
link(b,d).
link(a,c).
link(c,d).
link(c,f).
link(f,a).

% both directions (= undirected)
connected(X,Y) :- link(X,Y).
connected(X,Y) :- link(Y,X).

% dg/3 - directed graph
dg(X,Y, Path) :-
    travel(X,Y,[X],Path).
    
% direct connections
travel(X,Y,_V, [X,Y]) :- 
    link(X,Y).
    
% indirect connections
travel(X,Y,VisitedNodes,[X|ZY_Path]) :-
    link(X,Z),
    \+ member(Z,VisitedNodes),
    travel(Z,Y,[Z|VisitedNodes],ZY_Path).



% udg/3 - undirected graph
udg(X,Y,Path) :-
    travel2(X,Y,[X],Temp),
    reverse(Temp,Path).
    
% direct connections
travel2(X,Y,L,[Y|L]) :- 
    connected(X,Y).
    
% indirect connections
travel2(X,Y,Visited,Path) :-
    connected(X,Z),           
    \+ Z = Y,
    \+ member(Z,Visited),
    travel2(Z,Y,[Z|Visited],Path).
