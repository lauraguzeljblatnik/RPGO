%testni primeri za vaji 11 in 12

%Bezierjeve ploskve iz tenzorskega produkta

%Kontrolne tocke ploskve:

Bx = [0 3 5 6; 1 4 5 7; 0 3 5 6];
By = [-1 -2 -1 -2; 1 2 1 2; 5 5 6 5];
Bz = [-3 -2 0 -5; 3 6 3 2; -1 4 -2 8];


%Tocke na ploskvi:

u = linspace(0,1,10);
v = linspace(0,1,10);

[bx by bz] = bezier2(Bx,By,Bz,u,v);

%display(bx)
%display(by)
%display(bz)

%Coonsove ploskve

%Kontrolne tocke robnih krivulj:

[Bx,By,Bz] = deal(zeros(9,11));

phi = linspace(0,pi,11);
psi = linspace(0,pi,9);

Bx(1,:) = 1+sin(phi);
By(1,:) = -cos(phi);

Bx(9,:) = -1-sin(phi);
By(9,:) = -cos(phi);

Bx(:,1) = cos(psi);
By(:,1) = -1;
Bz(:,1) = sin(psi);

Bx(:,11) = cos(psi);
By(:,11) = 1;
Bz(:,11) = sin(psi);


%Kontrolne tocke Coonsove ploskve:

[Bxc,Byc,Bzc] = coons(Bx,By,Bz)

%Tocke na ploskvi:

u = linspace(0,1,10);
v = linspace(0,1,10);

[bx by bz] = bezier2(Bxc,Byc,Bzc,u,v)


