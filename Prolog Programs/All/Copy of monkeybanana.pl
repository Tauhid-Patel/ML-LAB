/* Monkey Banana Problem */
in_room(banana).
in_room(chair).
in_room(monkey).
clever(monkey).
can_climb(monkey,chair).
tall(chair).
can_move(monkey,chair,banana).

can_reach(X, Y):-
	clever(X),
	near(X,Y).
	
get_on(X,Y):- 
	can_climb(X,Y).
	
under(Y,Z):-
	in_room(X),in_room(Y),
	in_room(Z),can_move(X,Y,Z).
	
near(X,Z):-
	get_on(X,Y),
	under(Y,Z);
	tall(Y).