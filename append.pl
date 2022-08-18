% append/3

append([],L,L).

append([H|T],L2,[H|L3])  :-  
    append(T,L2,L3).
    
% append([1,2,3],[a,b],L).
