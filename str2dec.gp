str2dec(S) =
{	
	local(P, V, i);
	P = Vecsmall(S);
	V = [];
	for(i = 1, length(S),V = concat(V, P[i]));
	return(subst(Pol(V),x,128))
}


