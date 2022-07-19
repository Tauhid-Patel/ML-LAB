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

brother(X,Y):-
	fatherof(X,Z),
	fatherof(Y,Z),
	male(Y).