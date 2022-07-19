calc(X,Y):-
	Z1 is X+Y,
	write('Addition='),
	write(Z1),nl,
	Z2 is X-Y,
	write('Subtraction='),
	write(Z2),nl,
	Z3 is X*Y,
	write('Multiplication='),
	write(Z3),nl,
	Z4 is X / Y,
	write('Division='),
	write(Z4),nl.