% selfDifferent/2 - 1 digit is not 1, second digit is not 2, ...

selfDifferent([],_).
selfDifferent([H|T],N) :- 
    H #\= N, 
    M is N+1, 
    selfDifferent(T,M).
