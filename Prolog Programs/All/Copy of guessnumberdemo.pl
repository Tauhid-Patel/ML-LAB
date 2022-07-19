guessloop(50) :-
	write('You guessed it correctly').

guessloop(X) :-
	X =\= 50,
	write(X),write(' is not correct guess'),nl,
	write('Please guess the number :'),
	read(Num),
	guessloop(Num).