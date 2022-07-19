male(rajiv).
male(rahul).
male(sanjay).
male(feroze).
male(varun).
female(priyanka).
female(sonia).
female(maneka).
female(indira).
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

sister(X,Y):-
	fatherof(X,Z),
	fatherof(Y,Z),
	female(Y).
	
cousin(X,Y):- 
	fatherof(X,X1),
	fatherof(Y,Y1),
	X1 \= Y1,
	motherof(X1,Z),
	motherof(Y1,Z).