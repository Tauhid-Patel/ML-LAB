count10(10) :- write(10),nl. 
count10(X) :-
	   X < 10,
       write(X),
	   nl, 
	   Y is X + 1,
	   count10(Y). 
