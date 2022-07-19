caloriesByWeight(P, S, M, F, Weight, Calories) :-
	member(P, [0, 1, 2, 3, 4]),
	member(S, [0, 1, 2, 3]),
	member(M, [0, 1, 2, 3, 4, 5, 6, 7]),
	member(F, [0, 1, 2, 3, 4, 5]),
	Weight is 5*P + 7*S + 3*M + 4*F,
	Weight >= 20,
	Calories is 150*P + 50*S + l00*M + 200*F,
	write(Weight),nl,
	write(Calories),nl.