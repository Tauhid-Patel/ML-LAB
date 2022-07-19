begin(X):- 
	read(X),
	(X=stop; test_palindrome(X),begin(Y)).
	
test_palindrome(X):- 		
	name(X,Nx),
	palindrome(Nx),
	write(X),
	write(' is a palindrome'),nl,!.

test_palindrome(X):- 
	write(X),
	write(' is not a palindrome'),nl.
	
palindrome(X):- reverse2(X,X).

reverse2(L1,L):- 
	reverse_append(L1,[],L).
	
reverse_append([HIT],L,M):- 
	reverse_append(T,[HIL],M).
	
reverse_append([],L,L).