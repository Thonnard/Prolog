% count_even/2

count_even(X,0) :-
    X < 10,
    not(0 is X mod 2).

count_even(X,1) :-
    X < 10,
    0 is X mod 2.

count_even(X,R) :-
    X > 9,
    split_number(X, Digit, Rest),
    Tmp is (Digit+1) mod 2,
    count_even(Rest, Tmp2),
    R is Tmp + Tmp2.
