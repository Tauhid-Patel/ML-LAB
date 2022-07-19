fib(F, N) :- 
	N =:= 0, 
	F is 0.    %Stopping condition 1 and return value
	
fib(F, N) :- 
	N =:= 1,
	F is 1.   %Stopping condition 2 and return value
	
fib(F, N) :- 
	N > 1,
	Ml is N-2,
	M2 is N-1,
	fib(Fl, Ml), 	% Size N-1 problem
	fib(F2, M2),	% Size N-2 problem
	F is Fl + F2.	% Constructing size-N problem solution