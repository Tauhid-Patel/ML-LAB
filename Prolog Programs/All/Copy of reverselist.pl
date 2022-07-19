reversel([],[]).
reversel([X|Y],Z):- 
	reversel(Y,W), 
	appendl(W,[X],Z).
	
appendl([],X,X).
appendl([X|Y],Z,[X|W]):-
	appendl(Y,Z,W).