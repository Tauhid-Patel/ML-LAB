% Basmati rice 25 kg
% Tuvar dal  10 kg
% Chana dal  7 kg
% Masur dal  6 kg
weightcheck(B, T, C, M, W) :-
	member(B, [0,1]),
	member(T, [0,1,2]),
	member(C, [0,1,2,3]),
	member(M, [0,1,2,3]),
	W is 25*B + 10*T + 7*C + 6*M + 0.5,
	W =:=48.5,
	write(W), nl.