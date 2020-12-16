% test vaja 4

%Parametrizacija sestavljene krivulje

%Seznam tock, na podlagi katere dolocimo alfa-parametrizacijo:

P = [-5 0; -2 -1; 0 3; 3 0; 7 -1];


%Primeri za razlicne izbire parametra alfa:

alphaparam(P,0);
alphaparam(P,1/3);
alphaparam(P,0.5);
alphaparam(P,0.7);
alphaparam(P,1);
alphaparam(P,2);

%Kubicni C^2 zlepek

%Kontrolne tocke kubicnega C^2 zlepka in tocke za parametrizacijo:

D = [-5 0; -4 1; -2 -1; 0 3; 3 0; 5 2; 7 -1];
P = D([1 3 4 5 7],:);

	 
%Kontrolne tocke Bezierjevih krivulj pri enakomerni parametrizaciji:		 
format long
u1 = alphaparam(P,0);
B1 = beziercubspline(u1,D);
B1{1};
B1{2};
B1{3};
B1{4};

%Kontrolne tocke Bezierjevih krivulj pri centripetalni parametrizaciji:

u2 = alphaparam(P,0.5);
B2 = beziercubspline(u2,D);

%Kontrolne tocke Bezierjevih krivulj pri tetivni parametrizaciji:

u3 = alphaparam(P,1);
B3 = beziercubspline(u3,D);

t = linspace(0,1,100);

plot(D(:,1),D(:,2),'-o');
for i=1:4
    plotbezier(B1{i},t)
    plotbezier(B2{i},t)
    plotbezier(B3{i},t)
end 