max(X,Y):-
    (
	X=Y ->
	  write('both are equal');
	X>Y ->
	  (write('Max='),write(X));
	  (write('Max='),write(Y))
    ).



min(X,Y):-
(  
 X=Y -> 
  write('both are equal');
 X>Y -> 
  (write('Min ='),write(Y));
  (write('Min ='),write(X)) 
).