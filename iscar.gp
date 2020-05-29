printCarmichaels()={
	\\carNumbers = vector()
	for(n = 2, 10000,
	  for(a = 2, n-1, 
	    iscarmichael(a,n)
	  )
	)		
}
iscarmichael(a,n)={ 

	\\returns 1, if n is a Carmichael number with probability 1-2^-k.
	k=100; 
	
	\\if n is even number OR psuedoprime, then return 0 (n != carmichael number)	
	if(n % 2==0 || ispseudoprime(n) == 1, return(0));  

	\\check if n does NOT satisfy fermats theorem AND gcd(a,n) == 1, return 0 if true.
	for(t=1,k,a=random(n-3)+2;
		fermatsValue = lift(Mod(a,n)^(n-1));
		if(fermatsValue<>1 && gcd(a,n) == 1,return(0)));

	\\yay passed all cases! Therefore, most probably n = carmichael number!
	print(n);
	return(1);
};
