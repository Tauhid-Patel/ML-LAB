volume(9,5).

program(A,B,W):-
    volume(VA,VB),
    A>=0,
    A=<VA,
    B>=0,
    B=<VB,
    change(A,B,[[A,B]],W),
    write1(W).
	
write1([]).
write1([X|L]):-
    write(X),nl,
    write1(L).

element(A,B,W,W1):-
    not(member([A,B],W)),
    add1([A,B],W,W2),
    change(A,B,W2,W1).
              
change(3,_,W,W).
change(_,3,W,W).

change(A,B,W,W1):-
    volume(VA,_),
    B>0,
    C is VA-A,
    C>0,
    min(B,C,Min),
    A1 is A+Min,
    B1 is B-Min,
    element(A1,B1,W,W1).

change(A,B,W,W1):-
    volume(_,VB),
    A>0,
    C is VB-B,
    C>0,
    min(A,C,Min),
    B1 is B+Min,
    A1 is A-Min,
    element(A1,B1,W,W1).

change(A,B,W,W1):-
    volume(VA,_),
    A=VA,
    B>0,
    element(0,B,W,W1).

change(A,B,W,W1):-
    volume(_,VB),
    A>0,
    B=VB,
    element(A,0,W,W1).

change(A,B,W,W1):-
    volume(VA,_),
    A=0,
    element(VA,B,W,W1).

change(A,B,W,W1):-
    volume(_,VB),
    B=0,
    element(A,VB,W,W1).
    
min(A,B,A):- A=<B.
min(A,B,B):-A>B.

add(X,L,[X|L]). 

add1(X,[],[X]).
add1(X,[X1|L],[X1|L1]):-
    add1(X,L,L1).