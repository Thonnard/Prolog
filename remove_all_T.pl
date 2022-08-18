% remove_all/3 (remove all T from a list)

remove_all(_, [], []).

remove_all(T, [T|Tail], Tail2):- 
	remove_all(T, Tail, Tail2).

remove_all(El, [Head|Tail], [Head|Tail2]):-
	not(El = Head),
	remove_all(El, Tail, Tail2).
