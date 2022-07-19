factorial(0,1).
factorial(N,F) :- 
	N>0, 
	Nl is N-1, 
	factorial(Nl,Fl),
	F is N * Fl.