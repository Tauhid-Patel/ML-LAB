male(rajiv).
male(sanjay).
male(rahul).
male(varun).
male(feroze).
female(sonia).
female(maneka).
female(indira).
demale(priyanka).
fatherof(rahul,rajiv).
fatherof(priyanka,rajiv).
fatherof(varun,sanjay).
fatherof(rajiv,feroze).
fatherof(sanjay,feroze).
motherof(rahul,sonia).
motherof(priyanka,sonia).
motherof(varun,maneka).
motherof(rajiv,indira).
motherof(sanjay,indira).

brother(X,Y) :-
	motherof(X,Z),
	motherof(Y,Z),
	male(X).
	
grandmother(X,Y) :-
	female(X),
	fatherof(Y,Z),
	motherof(Z,X).

cousin(X,Y):-
	fatherof(X,A),
	fatherof(Y,B),
	fatherof(A,Z),
	fatherof(B,Z).
	