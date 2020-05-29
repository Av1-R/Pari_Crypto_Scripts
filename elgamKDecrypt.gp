{
elgamKDecrypt(Cipher1,Cipher2,rSecretkey,PNmod) =
	C1xSecret = lift(Mod(Cipher1, PNmod)^rSecretkey);	
	m = lift(Mod(Cipher2/C1xSecret, PNmod));
	print(m);
}
