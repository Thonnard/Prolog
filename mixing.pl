% mixing products 

reacts(vinegar,salt,25).
reacts(salt,water,3).
reacts('brown soap',water,10).
reacts('pili pili', milk,7).
reacts(tonic,bailey,8).


reaction(ProdA,ProdB,N) :- 
	reacts(ProdA,ProdB,N).
  
reaction(ProdA,ProdB,N) :- 
	reacts(ProdB,ProdA,N).
  
reaction(_ProdA,_ProdB,0). % no reaction between ProdA and ProdB


calc_reaction([],0).

calc_reaction([H|T],N):-
	calc_reaction_2(H,T,N1),
	calc_reaction(T,N2),
	N is N1+N2.


calc_reaction_2(_,[],0).

calc_reaction_2(A,[H|T],N):-
	reaction(A,H,N1),
	calc_reaction_2(A,T,N2),
	N is N1+N2.

advice(L) :-
    calc_reaction(L,Score),
    message(Score).


message(Score) :-
    Score < 5,
    write('No irritation').

message(Score) :-
    Score > 5,
    Score < 13,
    write('Minor irritation').

message(Score) :-
    Score > 12,
    Score < 21,
    write('Minor burning wounds').

message(Score) :-
    Score > 20,
    Score =< 30,
    write('Severe burning wounds').

% ?- advice([vinegar, water, beer, salt]).
