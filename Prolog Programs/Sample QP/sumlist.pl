sumlist([],0).
sumlist([H|T],S):-
	sumlist(T,N1),
	 S is N1+H.