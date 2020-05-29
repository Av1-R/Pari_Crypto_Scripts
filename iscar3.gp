iscar3(n)= 
my(f); 
bittest(n, 0) && !for(i = 1, #f = factor(n)~, 
	(f[2, i] == 1 && n%(f[1, i]-1)==1)||return n) && #f > 1
