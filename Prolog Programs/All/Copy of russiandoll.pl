directlyin(katarina,olga).
directlyin(olga,natasha).
directlyin(natasha,irina).
in(X,Y) :- directlyin(X,Y).
in(X,Y) :- directlyin(X,Z),
           in(Z,Y).