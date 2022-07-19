/* Graph implementation in PROLOG */
/* consider a directed graph */
edge(a, c).
edge(a, b).
edge(b, d).
edge(c, d).
edge(c, f).
edge(d, e).
edge(f, g).
edge(k, i).
edge(g, h).
edge(i, j).
edge(j, k).
edge(e, c).

connected(Nodel, Node2) :- 
	edge(Nodel, Node2).

connected(Nodel, Node2) :-
	edge(Nodel, X),
	connected(X, Node2),!.
	
path(X,Y) :- 
	edge(X,Y),!.

path(X,Y) :- 
	edge(X,Z), 
	path(Z,Y).

cycle(X) :- 
	path(X,X).