% removeSmaller/3 (remvoes all elements smaller than X)

removeSmaller(_, [], []).

removeSmaller(N, [M|Tail], Tail2):-
	M =< N,
	removeSmaller(N, Tail, Tail2).

removeSmaller(N, [M|Tail], [M|Tail2]):-
    M > N,
	removeSmaller(N, Tail, Tail2).
