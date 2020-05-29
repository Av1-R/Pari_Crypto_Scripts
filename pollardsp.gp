pollardsp(b, n) =
{
	local(a, j);
	a = Mod(2, n);
	for (j = 2, b,a = a^j;);
	print(a);
	p = gcd(a-1, N);
	return(p);
}


