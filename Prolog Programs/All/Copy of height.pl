
height(meera,145).
height(radha,158).
height(teena,145).
height(jiya, 160).

taller_than(X,Y) :- 
	height(X,H1), 
	height(Y,H2), 
	H1 > H2.

shorter_than(X,Y) :- 
	height(X,H1), 
	height(Y,H2), 
	H1 < H2.

equal(X,Y) :-
	height(X,H1), 
	height(Y,H2), 
	H1 =:= H2.