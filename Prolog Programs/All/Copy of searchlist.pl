searchlist(X,[X|_]).
searchlist(X,[_|Y]):-
	searchlist(X,Y).