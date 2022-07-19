isEven(X) :-
	Y is X//2,
	X =:= Y*2,
	write('number is even'),nl.

isOdd(X) :-
	Y is X//2,
	X =\= Y*2,
	write('number is odd'),nl.