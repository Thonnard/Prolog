% subList/2


subList(SubL,L) :- 
  suffix(S,L),
  prefix(SubL,S).
