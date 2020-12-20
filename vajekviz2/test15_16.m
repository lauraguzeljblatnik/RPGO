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

% Primer 1:

B1=[     2     1    -1     0;
     5     3    -4   NaN;
     0     0   NaN   NaN;
     1   NaN   NaN   NaN];
 
vrednost1 = decasteljau3(B1,p1); %vrednost v p1 
vrednost2 = decasteljau3(B1,p2); %vrednost v p2
vrednost3 = decasteljau3(B1,p3); %vrednost v p3

%odvodi v p1
odvod_x_P1 =(factorial(3)/factorial(3-1))* blossom3(B1, [x1;p1;p1]);
odvod_y_P1 = (factorial(3)/factorial(3-1))* blossom3(B1, [y1;p1;p1]);
odvod_xx_P1 = (factorial(3)/factorial(3-2))* blossom3(B1, [x1;x1;p1]);
odvod_xy_P1 = (factorial(3)/factorial(3-2))* blossom3(B1, [x1;y1;p1]);
odvod_yy_P1 = (factorial(3)/factorial(3-2))* blossom3(B1, [y1;y1;p1]);

%odvodi v p2
odvod_x_P2 =(factorial(3)/factorial(3-1))* blossom3(B1, [x1;p2;p2]);
odvod_y_P2= (factorial(3)/factorial(3-1))* blossom3(B1, [y1;p2;p2]);
odvod_xx_P2= (factorial(3)/factorial(3-2))* blossom3(B1, [x1;x1;p2]);
odvod_xy_P2 = (factorial(3)/factorial(3-2))* blossom3(B1, [x1;y1;p2]);
odvod_yy_P2= (factorial(3)/factorial(3-2))* blossom3(B1, [y1;y1;p2]);

%odvodi v p3
odvod_x_P3 =(factorial(3)/factorial(3-1))* blossom3(B1, [x1;p3;p3]);
odvod_y_P3= (factorial(3)/factorial(3-1))* blossom3(B1, [y1;p3;p3]);
odvod_xx_P3= (factorial(3)/factorial(3-2))* blossom3(B1, [x1;x1;p3]);
odvod_xy_P3= (factorial(3)/factorial(3-2))* blossom3(B1, [x1;y1;p3]);
odvod_yy_P3 = (factorial(3)/factorial(3-2))* blossom3(B1, [y1;y1;p3]);


%16 nal
Bx = [0 2 6 8;1 3 7 NaN; 2 5 NaN NaN; 4 NaN NaN NaN];
By = [0 1 0 -1; 2 2 3 NaN; 4 3 NaN NaN; 5 NaN NaN NaN];
Bz = [-2 1 -2 0; 4 -2 3 NaN; 0 5 NaN NaN; 3 NaN NaN NaN];

%Generiranje trikotne mreze:
[TRI,U] = trimeshgrid(10);

b = bezier3(Bx,By,Bz,U)
trisurf(TRI,b(:,1),b(:,2),b(:,3));

