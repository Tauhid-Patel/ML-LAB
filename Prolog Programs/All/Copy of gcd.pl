/* gcd of two numbers 
|?- gcd(10,5,Z).
    Z=5
*/
gcd(X,0,X).

gcd(X,Y,Z):- 
	R is mod(X,Y),
 	gcd(Y,R,Z).
