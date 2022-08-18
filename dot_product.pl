% dotProduct/3

dotProduct(L1,L2,R) :-
    accDot(L1,L2,0,R).
    

accDot([],[],A,A).

accDot([H1|T1], [H2|T2], A, R) :-
    Anew is A + (H1 * H2),
    accDot(T1,T2,Anew,R).
