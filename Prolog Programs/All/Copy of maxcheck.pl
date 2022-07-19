findmax(X,Y,Max) :- 
	X >= Y,!,
	Max is X ;
	Max is Y.