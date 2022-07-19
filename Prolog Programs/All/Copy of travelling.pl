road(mumbai,indore,601).
road(indore,gwalior,505).
road(gwalior,agra,121).
road(agra,delhi,222).
road(mumbai,surat,300).
road(surat,vadodara,154).
road(vadodara,jodhpur,554).
road(jodhpur,jaipur,357).

route(Town1,Town2,Distance):-
	road(Town1,Town2,Distance).
	
route(Town1,Town2,Distance):-
	road(Town1,X,Dist1),
	route(X,Town2,Dist2),
	Distance is Dist1+Dist2,
	!.