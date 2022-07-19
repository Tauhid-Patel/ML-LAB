count(I,N):-
	I =< N,
	write(I), nl,
	I1 is I + 1,
	count(I1,N).
	

