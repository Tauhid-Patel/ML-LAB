/* simple calculator */
/* arithmetic operators */
/* goal |?- eval(5,3,Res)
  Addition=8
  Subtraction=2
  multiplication=15
  ...  */

eval(A,B,R):-
	R is A + B,
	write('Addition='),
	write(R),nl,
	R1 is A - B,
	write('Subtraction='),
	write(R1),nl,
	R2 is A * B,
	write('Multiplication='),
	write(R2),nl,
	R3 is A / B,
	write('Division='),
	write(R3),nl,
	R4 is A // B,
	write('Integer Division='),
	write(R4),nl,
	R5 is A ** B,
	write('Power='),
	write(R5),nl,
	R6 is A mod B,
	write('Modulo Division='),
	write(R6),nl.