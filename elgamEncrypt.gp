{
elgamEncrypt(hPubkey,xPrivkey,msg,modq)=
	hx = Mod(hPubkey,modq)^xPrivkey;
	c = m * hx;
	print(concat("The ciphertext for non-rand elgamal:",c));
}
