male(dhirubhai).
male(mukesh).
male(anil).
male(kothari).
male(dattaraj).
male(akash).
male(anand).
male(anant).
male(jaianmol).
male(jaianshul).
male(pruthvi).
female(kokilaben).
female(nita).
female(nina).
female(deepti).
female(tina).
female(shloka).
female(isha).

fatherof(mukesh,dhirubhai).
fatherof(nina,dhirubhai).
fatherof(deepti,dhirubhai).
fatherof(anil,dhirubhai).
fatherof(akash,mukesh).
fatherof(isha,mukesh).
fatherof(anant,mukesh).
fatherof(jaianmol,anil).
fatherof(jaianshul,anil).
fatherof(pruthvi,akash).

motherof(mukesh,kokilaben).
motherof(nina,kokilaben).
motherof(deepti,kokilaben).
motherof(anil,kokilaben).
motherof(akash,nita).
motherof(isha,nita).
motherof(anant,nita).
motherof(jaianmol,tina).
motherof(jaianshul,tina).
motherof(pruthvi,shloka).

wifeof(dhirubhai,kokilaben).
wifeof(mukesh,nita).
wifeof(anil,tina).
wifeof(kothari,nina).
wifeof(dattaraj,deepti).
wifeof(akash,shloka).
wifeof(anand,isha).

grandfather(X,Y):-
	fatherof(X,Z),
	fatherof(Z,Y),
	male(Y).

grandmother(X,Y):-
	fatherof(X,Z),
	motherof(Z,Y),
	female(Y).

brother(X,Y):-
	X \= Y,
	fatherof(X,Z),
	motherof(X,M),
	fatherof(Y,Z),
	motherof(Y,M),
	male(Y).

sister(X,Y):-
	X \= Y,
	fatherof(X,Z),
	fatherof(Y,Z),
	motherof(X,M),
	motherof(Y,M),
	female(Y).

uncle(X,Y):-
	fatherof(X,Z),
	brother(Z,Y).

aunty(X,Y):-
	fatherof(X,Z),
	sister(Z,Y).
	
cousin(X,Y):-
	X \= Y,
	fatherof(X,P),
	fatherof(Y,Q),
	P \= Q,
	fatherof(P,Z),
	fatherof(Q,Z),
	motherof(P,M),
	motherof(Q,M),
	(male(X);female(X)),
	(male(Y);female(Y)).
	
greatgrandmother(X,Y):-
	grandmother(X,Z),
	wifeof(H,Z),
	motherof(H,Y),
	female(Y).	

greatgrandfather(X,Y):-
	grandfather(X,Z),
	fatherof(Z,Y),
	male(Y).
	
sibling(X,Y):-
	X \= Y,
	fatherof(X,Z),
	fatherof(Y,Z),
	motherof(X,M),
	motherof(Y,M),
	(female(X);male(X);male(Y);female(Y)).