listmember(X,[X|_]).
listmember(X,[_|Tail]):-
	listmember(X,Tail).