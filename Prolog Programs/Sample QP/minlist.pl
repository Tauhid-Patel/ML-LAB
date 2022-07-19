min_list([],0).
min_list([H|T],Min):-
	min_list(T,TMin),
	H > TMin,
	Min is TMin.

