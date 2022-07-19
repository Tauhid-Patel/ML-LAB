checksorted([]).
checksorted([_]).
checksorted([X,Y|T]):-
	X =< Y,
	checksorted([Y|T]).