/* list operations */

/* member checking */
list_member(X,[X|_]).
list_member(X,[_|TAIL]) :- list_member(X,TAIL).

/* length identification */
list_length([],0).
list_length([_|TAIL],N) :- list_length(TAIL,N1), N is N1 + 1.

/* list cncatenation */
list_concat([],L,L).
list_concat([X1|L1],L2,[X1|L3]) :- 			list_concat(L1,L2,L3).

/* delete items */
list_delete(X, [X], []).
list_delete(X,[X|L1], L1).
list_delete(X, [Y|L2], [Y|L1]) :- list_delete(X,L2,L1).

/* append in list */
list_member(X,[X|_]).
list_member(X,[_|TAIL]) :- list_member(X,TAIL).

list_append(A,T,T) :- list_member(A,T),!.
list_append(A,T,[A|T]).

/* insert into list */
list_insert(X,L,R) :- list_delete(X,R,L).

/* list reverse */
list_rev([],[]).
list_rev([Head|Tail],Reversed) :-
   list_rev(Tail, RevTail),list_concat(RevTail, [Head],Reversed).
   
/* List shift */
 list_shift([Head|Tail],Shifted) :- 
	list_concat(Tail, [Head],Shifted)
	
/* order operation */
list_order([X, Y | Tail]) :- X =< Y, list_order([Y|Tail]).
list_order([X]).