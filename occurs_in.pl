% occurs_in/2

occurs_in(Digit,Number):-
    split_number(Number,Digit,_).

occurs_in(Digit,Number):-
    Number>=10,
    split_number(Number,_,NewNumber),
    occurs_in(Digit,NewNumber).
