digits_reverse(N,X) :-
	reversed(N,X,0).

reversed(0,R,R).

reversed(N,X,R) :-
   N > 0,
   N0 is N//10,
   R1 is R*10 + (N mod 10),
   reversed(N0,X,R1).