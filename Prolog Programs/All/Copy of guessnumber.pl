guess:- loop(start).

loop(35) :- write('You guessed it').

loop(X) :-
	X  \= 35,
	write('Guess number '),
	read(Guess),
	write(Guess),
	write(' is not the number'),nl,
	loop(Guess).
	