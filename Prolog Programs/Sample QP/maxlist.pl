max_list([],0).
max_list([H|T],Max):-
	max_list(T,TMax),
	H > TMax,
	Max is H.

/*max_list([H|T],Max):-
	max_list(T,TMax),
	Head=<TMax,
	Max is TMax.*/