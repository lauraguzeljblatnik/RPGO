%vaja 13 in 14
%Aproksimacija z Bezierjevimi ploskvami po metodi najmanjsih kvadratov

%Podatki z grafa funkcije peaks:

[X,Y,Z] = peaks(50);
P = [(X(:)+3)/6 (Y(:)+3)/6 Z(:)];

%Bezierjeva ploskev za m = 6 in n = 5:

[Bx,By] = meshgrid(linspace(-3,3,7),linspace(-3,3,6));
Bz = lsqbezier2(6,5,P)

%Izracun vrednosti na mrezi 10 x 10:

[u,v] = deal(linspace(0,1,10));
[~,~,bz] = bezier2(Bx,By,Bz,u,v);


%Maksimalna absolutna napaka na mrezi 50 x 50:

[u,v] = deal(linspace(0,1,50));
[~,~,bz] = bezier2(Bx,By,Bz,u,v);
norm(bz(:)-P(:,3),Inf)

%Bezierjeva ploskev za m = 9 in n = 10:

[Bx,By] = meshgrid(linspace(-3,3,10),linspace(-3,3,11));
Bz = lsqbezier2(9,10,P)

%Izracun vrednosti na mrezi 10 x 10:

[u,v] = deal(linspace(0,1,10));
[~,~,bz] = bezier2(Bx,By,Bz,u,v);


%Maksimalna absolutna napaka na mrezi 50 x 50:

[u,v] = deal(linspace(0,1,50));
[~,~,bz] = bezier2(Bx,By,Bz,u,v);
norm(bz(:)-P(:,3),Inf)


