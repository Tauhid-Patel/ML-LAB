girl(alia).
girl(shaheen).
girl(pooja).
boy(rahul).
boy(suresh).
father(mahesh,suresh).
father(alia,mahesh).
father(shaheen,mahesh).
father(rahul,mahesh).
father(pooja,mahesh).
mother(alia,soni).
mother(shaheen,soni).
mother(rahul,soni).
mother(pooja,tina).

sister(X,Y):-
	father(X,Z),
	father(Y,Z),
	girl(X),
	girl(Y).

parent(X,Y):-
	mother(Y,X);father(Y,X).

grandfather(X,Y):-
	father(X,Z),
	father(Z,Y),
	boy(Y).
	
	