\\this function is useless just use -> ellmul(e,P,x)
\\and remember pubkey = xPpoint

{
ecePubkey(elcurve,Ppoint,privateKeyx)=
	
	\\Q = xP: private key multiplied by secret x
	Q = ellmul(E,P,privateKeyx);

	print(concat("The publicKey Q is",Q));

}
