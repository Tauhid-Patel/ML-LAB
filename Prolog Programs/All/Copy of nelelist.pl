find([],N) :-
        write('There is no such element in the list'),nl.
        
find([Element|List],1) :-
        write('The element is '),write(Element),nl.
        
find([Element|List],N) :-
        N1 is N-1,
        find(List,N1).