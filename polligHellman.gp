{
PohligHellman(p, q, r, g, h) =
hq = Mod(h, p)^((p-1)/q);
print(concat("hq: ", hq));
gq = Mod(g, p)^((p-1)/q);
print(concat("gq: ", gq));
print("");
xq;
for (i = 0, i = q-1, if(gq^i == hq, xq=i));
print(concat("xq: ", xq)); 
print("");
hr = Mod(h, p)^((p-1)/r);
print(concat("hr: ", hr));
gr = Mod(g, p)^((p-1)/r);
print(concat("gr: ", gr));
print("");
xr;
for (i = 0, i = r-1, if(gr^i == hr, xr=i));
print(concat("xr: ", xr)); 
print("");
print("-------------chinese remainder theorem test---------------");
print("");
print("---first test: x = 1 (mod 2)---");
print("");
x1 = chinese(Mod(1, 2), chinese(Mod(xr, r), Mod(xq, q)));
x1result = lift(Mod(5,p)^lift(x1));
if(x1result == h, print(concat("That worked! x = ", lift(x1))));
print("");
print("---second test: x = 0 (mod 2)---");
print("");
x2 = chinese(Mod(0, 2), chinese(Mod(xr, r), Mod(xq, q)));
x2result = lift(Mod(5,p)^lift(x2));
if(x2result == h, print(concat("That worked! x = ", lift(x2))));
print("");
}
