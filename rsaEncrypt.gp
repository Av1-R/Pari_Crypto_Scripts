{
rsaEncrypt(m,e,N) =
	M = lift(Mod(m, N));
	c = lift(Mod(M, N)^e);
	print(concat("value of cipher c:", c));
	return c;
}
