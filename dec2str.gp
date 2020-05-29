{
dec2str(n) =
	local(t, w, i);
	if(n == 0, return(""),w = "";
	t = n;
	while(t != 0,i = t%128;t = (t - i)/128;
	w = concat(Strchr(i), w););
return(w););
}
