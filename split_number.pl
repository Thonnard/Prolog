% split_number/2

split_number(Number, Digit, Rest) :-
    Digit is Number mod 10,
    Rest is Number // 10.
