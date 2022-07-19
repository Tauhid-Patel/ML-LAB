/* display result X is greater or smaller */

gt(X,Y) :-
	X >= Y,
	write(X),tab(1),write('is greater than '),write(Y),nl.
gt(X,Y) :-
	X < Y,
	write(X),tab(1),write('is less than '),
	write(Y),nl.