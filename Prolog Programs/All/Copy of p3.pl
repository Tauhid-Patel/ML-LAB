girl(alia).
girl(shaheen).
girl(pooja).
boy(rahul).
father(alia,mahesh).
father(shaheen,mahesh).
father(rahul,mahesh).
father(pooja,mahesh).
mother(alia,soni).
mother(shaheen,soni).
mother(rahul,soni).
mother(pooja,tina).
sisters(X,Y) :-
	father(X,Z),
	father(Y,Z),
	girl(X),
	girl(Y).
brother(X,Y):-
	father(X,Z),
	father(Y,Z),
	girl(X),
	boy(Y).
sibling(X,Y) :-
	mother(X,Z),
	mother(Y,Z).
	