% translator/2
tran(een,one).
tran(twee,two).
tran(drie,three).
tran(vier,four).
tran(vijf,five).
tran(zes,six).
tran(zeven,seven).
tran(acht,eight).
tran(negen,nine).

translator([],[]).

translator([Hn|Tn], [He|Te]) :-
    tran(Hn,He),
    translator(Tn,Te).
