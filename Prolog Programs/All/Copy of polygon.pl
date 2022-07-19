polygon(5,pentagon).
polygon(6,hexagon).
polygon(7,heptagon).
polygon(8,octagon).
polygon(9,nonagon).
polygon(10,decagon).

know_polygon :-
	write('How many sides has the polygon ? '),nl,
	read(Sides),
	polygon(Sides,Name),
	write('The polygon is '),
	write(Name),nl.