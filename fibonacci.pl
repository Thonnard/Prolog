% fibonacci/2 (without accumulator)

fibonacci(1,1).
fibonacci(2,1).
fibonacci(N,F) :-
    N > 2,
    N1 is N-1,
    N2 is N-2,
    fibonacci(N1,F1),
    fibonacci(N2,F2),
    F is F1 + F2.
    


% fibonacci2/2 (with accumulator)

fibonacci2(N,Fib):-
    fib_acc(1,N,0,1,Fib).


fib_acc(N,N,_,Result,Result).

fib_acc(Count,N,PreviousFib,CurrentFib,Result):-
	Count < N,
	NextCount is Count + 1,
	NextFib is CurrentFib + PreviousFib,
  fib_acc(NextCount,N,CurrentFib,NextFib,Result).
