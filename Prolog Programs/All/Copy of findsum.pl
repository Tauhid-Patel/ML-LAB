/* find sum of list elements */
/* |?- findsum([1,2,3,4])
     10
*/

findsum(L) :-
	sum(L,S),
	write('Sum='),write(S).

sum([],0).

sum([X|Tail],S):-
	sum(Tail,T),
	S is X + T.
	