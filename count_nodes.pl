% countNodes/2
% count nodes in a tree

countNodes(nil,0).
countNodes(t(L,_,R),N) :-
    countNodes(L,NL),
    countNodes(R,NR),
    N is NL + NR + 1. % add one for root node

% T = t(t(nil, b , nil), a, t(nil, d, nil)), countNodes(T,X), write(X).
% T = t(t(nil, b , nil), a, t( t(nil, d, nil), c, nil)), countNodes(T,X), write(X).
