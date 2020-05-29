iterateCarmichaels()={
    for(n = 2, 10000,
            if(isCarmichael(n-1, n)<>0, print(concat("A probable Carcmicael Number < 10,000 = ", n))))       
}

isCarmichael(a,n)={ 
    if(n % 2 == 0 || isprime(n) == 1, return(0));  
    for(i=1, a, a++;
            fermatsValue = lift(Mod(a,n)^(n-1));
            if(fermatsValue <>1 && gcd(a,n) == 1,return(0)));
    return(1)
};

