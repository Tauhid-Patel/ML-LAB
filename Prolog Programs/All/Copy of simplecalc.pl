/* Simple Calculator 
e.g. |?- eval(10,6,Z). will provide result */

eval(A,B,C) :-
	C is A + B,
	write('Addition='),
	write(C),nl.

eval(A,B,C) :-
	C is A - B,
	write('Subtraction='),
	write(C),nl.
	
eval(A,B,C) :-
	C is A * B,
	write('Multiplication='),
	write(C),nl.
	
eval(A,B,C) :-
	C is A / B,
	write('Division='),
	write(C),nl.	
	
eval(A,B,C) :-
	C is A ** B,
	write('Power='),
	write(C),nl.
	
eval(A,B,C) :-
	C is A // B,
	write('Integer Division='),
	write(C),nl.

eval(A,B,C) :-
	C is A mod B,
	write('Modulo division='),
	write(C),nl.