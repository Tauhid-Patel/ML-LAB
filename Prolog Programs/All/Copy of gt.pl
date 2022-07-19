gt(X,Y) :-
	X > Y,
	write('X is greater than Y').

gt(X,Y) :-
	X < Y,
	write('X is smaller than Y').

gt(X,Y) :-
	X =:= Y,
	write('X and Y are equal').