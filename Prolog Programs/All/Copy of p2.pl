sings_a_song(sayali).
listen_to_music(pawandeep).

listen_to_music(X) :-
	sings_a_song(X).

happy(X) :-
	sings_a_song(X).
	
happy(X) :-
	listen_to_music(X).

plays_guitar(pawandeep) :-
	listen_to_music(pawandeep).
	
