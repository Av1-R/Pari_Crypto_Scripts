{
rsaDecrypt(c,d,N) =
	M = lift(Mod(c, N)^d);
	print(concat("value of Message M:", M));
	return M;
}
