% crossword/6 

% this is the solution for the crossword puzzle in Learn Prolog Now, chapter 2


word(astante,  a,s,t,a,n,t,e).
word(astoria,  a,s,t,o,r,i,a).
word(baratto,  b,a,r,a,t,t,o).
word(cobalto,  c,o,b,a,l,t,o).
word(pistola,  p,i,s,t,o,l,a).
word(statale,  s,t,a,t,a,l,e).

crossword(V1,V2,V3,H1,H2,H3) :-
    word(V1, _,H2V2,_,H2V4,_,H2V6,_),
    word(V2, _,H4V2,_,H4V4,_,H4V6,_),
    word(V3, _,H6V2,_,H6V4,_,H6V6,_),
    word(H1, _,H2V2,_,H4V2,_,H6V2,_),
    word(H2, _,H2V4,_,H4V4,_,H6V4,_),
    word(H3, _,H2V6,_,H4V6,_,H6V6,_),
    V1 \= H1,
    V2 \= H2,
    V3 \= H3.
