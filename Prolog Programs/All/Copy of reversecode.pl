main :-
	reverse([],[]).
	reverse([X|Y],Z):- 
	    reverse(Y,W),append(W,[X],Z).
	append([],X,X).
	append([X|Y],Z,[X|W]):- append(Y,Z,W).