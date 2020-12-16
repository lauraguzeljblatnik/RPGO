%test 2 vaja

%kontrolne točke
B = [
   -0.6667   -0.8000;
    0.3333    0.2000;
         0         0;
   -0.3333    0.2000;
    0.6667   -0.8000];

%vrednosti odvodov
t = linspace(0,1,100);

%bezierder(B,1,t);
%bezierder(B,2,t);
%bezierder(B,3,t);
%bezierder(B,4,t);

b1 = bezierder_kontrolneTocke(B,1,t);
b2 = bezierder_kontrolneTocke(B,2,t);
b3= bezierder_kontrolneTocke(B,3,t);
b4 = bezierder_kontrolneTocke(B,4,t);

plotbezier(B,t)
plotbezier(b1,t)
plotbezier(b2,t)