% listSum/2

listSum([],0).

listSum([A|Rest],Sum):-
	listSum(Rest,Sum1),
	Sum is Sum1 + A.
