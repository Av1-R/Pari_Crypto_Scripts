{
elgamDecrypt(hPubkey,xPrivkey,ciphertext,modq)=
	hx2 = Mod(hPubkey,modq)^xPrivkey;
	m = c/hx2;
	print(concat("The plaintext for non-rand elgamal:",m));
}
