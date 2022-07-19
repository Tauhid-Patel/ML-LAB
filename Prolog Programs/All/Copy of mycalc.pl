calc(Num1, Num2):-
	A is Num1 + Num2,
	write('Addition= '),write(A),nl,
	B is Num1 - Num2,
	write('Subtraction= '),write(B),nl,
	C is Num1 * Num2,
	D is Num1 / Num2,
	E is Num1 // Num2,
	F is Num1 mod Num2,
	write(C),nl,
	write(D),nl,
	write(E),nl,
	write(F),nl.