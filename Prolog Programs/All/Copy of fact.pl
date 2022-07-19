/* factorial calcualtion 
  |?- factorial(5,X).
      X=120   */

factorial(0,1).

factorial(N,Result):-
	N > 0,
	N1 is N -1,
	factorial(N1, S),
	Result is S * N.