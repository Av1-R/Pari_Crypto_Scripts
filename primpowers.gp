{
primpowers(g, n) =
	local(i);
	g = Mod(g, n);
	for(i = 0, 2*n,print(g^i));
}
