% count_digits/2

count_digits(Number,Number):-
    Number < 10. 

count_digits(Number,Sum):-
    Number >= 10,
    split_number(Number,Digit,NewNumber),
    count_digits(NewNumber,TmpSum), 
    Sum is TmpSum + Digit. 
