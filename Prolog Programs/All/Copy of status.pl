/* status data*/
likes(alia, ranbir).
likes(ranbir, alia).
likes(deepika, ranbir).

dating(X, Y) :-  
		likes(X, Y),
		likes(Y, X).
		
friends(X, Y) :-
		likes(X, Y).
