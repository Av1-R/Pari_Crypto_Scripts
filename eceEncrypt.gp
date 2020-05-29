{
eceEncrypt(elcurve,Mmsg,Ppoint,k,Qpubkey) =

	\\c1 = kP
	c1 = ellmul(elcurve,Ppoint,k);
	
	\\c2 = M + kQ
	c2 = elladd(elcurve,Mmsg,ellmul(elcurve,Qpubkey,k));

	print(concat("Value of c1:", c1));
	print(concat("value of c2:", c2));
}
