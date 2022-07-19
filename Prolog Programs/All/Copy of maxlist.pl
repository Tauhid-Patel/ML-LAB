/* find max element from list elements */

maxlist([],0).
maxlist([Head|Tail],Max) :-
    maxlist(Tail,TailMax),
    Head > TailMax,
    Max is Head.
	
maxlist([Head|Tail],Max) :-
    maxlist(Tail,TailMax),
    Head =< TailMax,
    Max is TailMax.

/* find min element from list elements */

minlist([Min],Min).              
minlist([Head,X|Tail],M) :-
    Head =< X,                            
    minlist([Head|Tail],M).             

minlist([Head,X|Tail],M) :-
    Head > X,                              
    minlist([X|Tail],M).   