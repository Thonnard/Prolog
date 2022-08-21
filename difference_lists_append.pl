% adl/3 - append difference lists

adl(A-B,C-D,A-D) :- 
    B = C.
    
    
% adl([1,2,3|B] - B, [a,b|D] - D, L1-L2).
% adl([a,b,c|E]-E,  [x,y,z|W]-W,  O).
