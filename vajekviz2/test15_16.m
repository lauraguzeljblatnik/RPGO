%test vaja 15 in 16

%Polinomi dveh spremenljivk

%Domenski trikotnik:
 
T = [0 0; 5 1; 3 3];
P1 = [0.000000 0.000000];
P2 = [1.000000 1.000000];
P3 = [4.000000 2.000000];
x = [1.000000 0.000000];
y = [0.000000 1.000000];

p1 = pointbary(P1,T);
p2 = pointbary(P2,T);
p3 = pointbary(P3,T);
x1 = vectorbary(x,T);
y1 = vectorbary(y,T);

%Baricentricne koordinate tocke P1 = (0.000000,0.000000): (1.000000, 0.000000, 0.000000)
%Baricentricne koordinate tocke P2 = (1.000000,1.000000): (0.666667, 0.000000, 0.333333)
%Baricentricne koordinate tocke P3 = (4.000000,2.000000): (0.000000, 0.500000, 0.500000)
%Baricentricne koordinate vektorja x = (1.000000,0.000000): (-0.166667, 0.250000, -0.083333)
%Baricentricne koordinate vektorja y = (0.000000,1.000000): (-0.166667, -0.250000, 0.416667)