% flatten/2

flatten([], []).

flatten([X|Y], List):-
	is_list(X),  % X is a non-empty list
	flatten(X,List1),
	flatten(Y, List2),
	append(List1,List2,List).
  
flatten([X|Y], [X|List]):-
	not(is_list(X)),
	flatten(Y, List).
  

is_list([_|_]).
is_list([]).


% ?- flatten([a,b,[1,2],c], List).
