/* find sum of list elements */

findsum(L):-
        sum(L,S),
        write('Sum Of Given List : '),write(S).
            
sum([],0).
    
sum([X|Tail],S):-
    sum(Tail,Temp),
    S is Temp + X.