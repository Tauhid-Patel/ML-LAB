countN(X,N) :-
	   X < N,
       write(X),
	   nl, 
	   Y is X + 1,
	   countN(Y,N).
	   
countN(N,N):-
		write(N). 
	   