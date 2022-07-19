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
			write('Integer division='),
			write(C),nl.
eval(A,B,C) :- 
			C is A mod B,
			write('Modulo division='),
			write(C),nl.