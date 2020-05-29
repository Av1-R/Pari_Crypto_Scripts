{
eceDecrypt(elcurve,c1,c2,privKeyx,k)=
	
	\\simply c1 * privateKey
	c1d = ellmul(elcurve,c1,privKeyx);
	
	\\negate c1d
	c1neg = ellneg(elcurve,c1d);

	\\c2d = c2 - c1d
	c2d = elladd(elcurve,c2,c1neg);

	print(concat("c1Decrpted:", c1d));
	print(concat("c2Decrypted:", c2d));
	print(concat("Value of M:", lift(c2d)));
	
}
