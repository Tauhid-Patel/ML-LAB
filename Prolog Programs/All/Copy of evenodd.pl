/* The = is Prolog unification operator, it does not perform arithmetic  evaluation.
 That means 8 = 4 + 4 is false in Prolog.
 Instead you can use 8 is 4 + 4 or 8 =:= 4 + 4.
 The unification operator tries to unify intensional structure, and 
 8 = 4 + 4 is   trying to unify '+'(4, 4) with 8.
 However 8 = 8 unifies! */

even(0).
even(X) :-
	X > 0,
	X1 is  X - 1,
	odd(X1).

even(X) :-
	X < 0,
	X1 is  X + 1,
	odd(X1).
	
odd(1).

odd(X) :-
	X > 0,
	X1 is X - 1,
	even(X1).
	
odd(X) :- 
	X < 0,
	X1 is X + 1,
	even(X1).