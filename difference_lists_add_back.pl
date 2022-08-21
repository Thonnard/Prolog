% bdl/3 - add element to back of difference list

bdl(E,A-B,A-C) :- 
    B = [E|C].
    
    
% bdl(10,[1,2,3|B]-B,O).
