minlist([Min],Min).              

minlist([Head,X|Tail],M) :-
    Head =< X,                            
    minlist([Head|Tail],M).             

minlist([Head,X|Tail],M) :-
    Head > X,                              
    minlist([X|Tail],M).           