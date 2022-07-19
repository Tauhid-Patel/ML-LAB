sayhi :-
	write('Enter your name: '),
	read(Name),
	write('Hi '),
	write(Name).

favchar :-
	write('What is your fav character :'),
	get(X),
	format('The ASCII value ~w is ', [X]),
	put(X),nl.