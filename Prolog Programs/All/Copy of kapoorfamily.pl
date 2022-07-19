male(raj).
male(rajiv).
male(randhir).
male(rishi).
male(ranbir).

female(krishna).
female(ritu).
female(babita).
female(neetu).
female(karishma).
female(kareena).
female(ridhima).

father(rajiv,raj).
father(randhir,raj).
father(rishi,raj).
father(ritu,raj).
father(karishma, randhir).
father(kareena, randhir).
father(ridhima, rishi).
father(ranbir, rishi).

wife(krishna,raj).
wife(babita,randhir).
wife(neetu,rishi).

brother(X,Y) :-
	father(X,Z),
	father(Y,Z),
	male(X),
	male(Y).
	
grandmother(X,Y) :-
	female(X),
	father(Y,F),
	father(F,H),
	wife(X,H).

cousin(X,Y):-
	father(X,A),
	father(Y,B),
	father(A,Z),
	father(B,Z),
	A\=B.
	