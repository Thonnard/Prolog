% fdl/3 - add element to front of difference list

fdl(E,A-B,C-B) :- 
    C = [E|A].
    
    
% fdl(10,[1,2,3|B]-B,O).
