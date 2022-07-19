sentence(A,B) :-
    np(A,C),
	vp(C,B).

np(A,B) :- n(A,B).

vp(A,B) :- v(A,B).

vp(A,B) :- 
	v(A,C),
	np(C,B).


n([sudha|X],X).
n([narayan|X],X).
v([called|X],X).
v([mentioned|X],X).
v([praised|X],X).