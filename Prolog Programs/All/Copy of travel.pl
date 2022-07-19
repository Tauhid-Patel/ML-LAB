next_to(thane, dadar).
next_to(thane, andheri).
next_to(thane, kurla).
next_to(andheri, thane).
next_to(kurla, thane).
next_to(dadar, bandra).
next_to(andheri, thane).
travel(A, C) :- next_to(A, B), next_to(B, C).