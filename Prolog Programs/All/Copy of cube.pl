cube :-
	write('Enter a number : '),
	read(Number),
	process(Number).
process(stop) :- !.
process(Number) :-
	C is Number * Number * Number,
	write('Cube of '), write(Number),write(' is : '), write(C),nl,cube.