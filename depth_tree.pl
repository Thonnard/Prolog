% depth/2
% depth of a tree

depth(nil,0).

depth(t(nil,_,nil),1).

depth(t(L,_,R), D) :- 
    depth(L,DL),
    depth(R,DR),
    D is max(DL, DR) + 1.
    
    
% T = t(t(nil, b , nil), a, t(nil, d, nil)), depth(T,X), write(X).
