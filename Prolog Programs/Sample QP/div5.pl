eval(A):-
  
	B is A mod 5,
	B==0 ->
	(write(A),write('is Divisible by 5.'));
	(write(A),write('is not Divisible by 5.')).

	 