female(priyanka).
female(sonia).
female(maneka).
female(indira).
male(rajiv).
male(sanjay).
male(feroz).
male(rahul).
male(varun).
fatherof(rahul,rajiv).
fatherof(priyanka,rajiv).
fatherof(varun,sanjay).
fatherof(rajiv,feroz).
fatherof(sanjay,feroz).
motherof(rahul,sonia).
motherof(priyanka,sonia).
motherof(varun,maneka).
motherof(rajiv,indira).
motherof(sanjay,indira).


grandmotherof(X,GM) :-
	fatherof(X, F),
	motherof(F, GM).

grandfatherof(X, GF) :-
	fatherof(X,F),
	fatherof(F, GF).

cousinof(X, Y) :-
	fatherof(X,F),
	fatherof(Y, Z),
	motherof(F,M),
	motherof(Z,M),
    F \= Z.

siblings(X,Y) :-
	motherof(X,M),
	motherof(Y,M),
	X \= Y.

sister(X,Y) :-
	motherof(X,M),
	fatherof(X,F),
	motherof(Y,M),
	fatherof(Y,F),
	X \= Y,
	female(X).

brother(X,Y) :-
	motherof(X,M),
	motherof(Y,M),
	male(X),
	X \= Y.

uncle(X,Y) :-
	fatherof(X,F),
	brother(F,Y).

uncle(X,Y) :-
	motherof(X,M),
	brother(M,Y).
