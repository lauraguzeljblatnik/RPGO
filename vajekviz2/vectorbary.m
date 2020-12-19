function V = vectorbary(P, T)
%vektor P-0 glede na trikotnik T
%pretvori v barocentrične korodinate V

o = pointbary([0 0], T);
p1 = pointbary(P,T);

V = p1-o;
end