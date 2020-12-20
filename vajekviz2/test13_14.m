%vaja 13 in 14
%Aproksimacija z Bezierjevimi ploskvami po metodi najmanjsih kvadratov

%Podatki z grafa funkcije peaks:

[X,Y,Z] = peaks(50);
P = [(X(:)+3)/6 (Y(:)+3)/6 Z(:)];

%Bezierjeva ploskev za m = 6 in n = 5:

[Bx,By] = meshgrid(linspace(-3,3,7),linspace(-3,3,6));
Bz = lsqbezier2(6,5,P);

%Izracun vrednosti na mrezi 10 x 10:

[u,v] = deal(linspace(0,1,10));
[~,~,bz] = bezier2(Bx,By,Bz,u,v);


%Maksimalna absolutna napaka na mrezi 50 x 50:

[u,v] = deal(linspace(0,1,50));
[~,~,bz] = bezier2(Bx,By,Bz,u,v);
norm(bz(:)-P(:,3),Inf);

%Bezierjeva ploskev za m = 9 in n = 10:

[Bx,By] = meshgrid(linspace(-3,3,10),linspace(-3,3,11));
Bz = lsqbezier2(9,10,P);

%Izracun vrednosti na mrezi 10 x 10:

[u,v] = deal(linspace(0,1,10));
[~,~,bz] = bezier2(Bx,By,Bz,u,v);


%Maksimalna absolutna napaka na mrezi 50 x 50:

[u,v] = deal(linspace(0,1,50));
[~,~,bz] = bezier2(Bx,By,Bz,u,v);
norm(bz(:)-P(:,3),Inf);

%Aproksimacija s sestavljenimi Bezierjevimi ploskvami

%Podatki z grafa funkcije peaks:

[X,Y,Z] = peaks(50);
P = [(X(:)+3)/6 (Y(:)+3)/6 Z(:)];


%Sestavljena Bezierjeva ploskev za M = 5, N = 4 in m = 3, n = 4:

Sz = lsqbezier2spline(5,4,3,4,P);

[U,V] = meshgrid(linspace(0,1,10));

[Bx,By] = meshgrid(linspace(-3,3,16),linspace(-3,3,17));
B1 = cell2mat(Sz);

n1 = size(B1,1);
m1 = size(B1,2);
for k = 1: 3
    B1(1+4*k, :) = [];
end
for k = 1:4
     B1(:,1+3*k) = [];
end
B1;
[u,v] = deal(linspace(0,1,10));
[~,~,bz] = bezier2(Bx,By,B1,u,v)

%norm(bz(:)-P(:,3),Inf)