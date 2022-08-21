% solution to crack safe puzzle: 

/* 
A criminal wants to break into a safe. He needs to find the combination of the safe: 9 digits in total. 
He knows that all digits are different, that all digits are in the range 1..9 and that the 1st digit is not 1, 
the 2nd digit is not 2, and so on ... . Moreover, the absolute difference between the 4th and the 6th digit is 
equal to the 7th digit. The product of the first three digits is equal to the sum of the last two digits. 
The sum of the 2nd, 3th and 6th digit is less than the 8th digit, and also the last digit is less than the 8th digit.
Please help our criminal break the safe (using CLP). 
*/

:- use_module(library(clpfd)).

crack_safe(L) :-
    L = [A,B,C,D,_E,F,G,H,I], % A=1st digit, B=2nd digit, ... , no information about 5th digit (E)
    L ins 1..9,
    all_different(L),
    self_different(L, 1),
    (D-F #= G) #\/ (F-D #= G), % difference between D and F can be D-F or F-D
    A*B*C #= H+I,
    B+C+F #< H,
    I #< H,
    labeling([],L).

% ? - crack_safe(L).
