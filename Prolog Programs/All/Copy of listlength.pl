/* length of list */

listlength([],0).
listlength([_|Tail],N) :-
	listlength(Tail,N1),
	N is N1 + 1.