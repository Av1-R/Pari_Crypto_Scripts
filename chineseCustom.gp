{
chineseCustom(z1,z2,z3,n1,n2,n3)=
	x1 =chinese(Mod(z1,n1),Mod(z2,n2));
	print(concat("X mod N1 * N2 is:",x1));

	x2 = chinese(Mod(z1,n1),chinese(Mod(z2,n2),Mod(z3,n3)));
	print(concat("X mod N1 * N2 * N3 is:",x2));
}

