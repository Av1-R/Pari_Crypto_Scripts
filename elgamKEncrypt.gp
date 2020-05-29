{
elgamKEncrypt(g,k,N,H1,m) =
	C1 = Mod(g, N)^k;
	Hk = Mod(H1,N)^k;
	C2 = Mod(m * Hk, N);
	printf(C1,C2);
}
