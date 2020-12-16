% test 9 & 10
%Racionalne Bezierjeve krivulje in Farinove tocke

%Racionalna Bezierjeva krivulja:

B = [0 0; 2 3; 5 0; 3 -1; 2 -1];
w = [0.5 0.7 0.8 1 0.6];

B1 = B(:,1);
rdecasteljau1D(B1,w,0.5);
t = linspace(0,1,100);
%rplotbezier (B , w, t);
%Tocke na krivulji:

rdecasteljau(B,w,0.5);

a1 = rbezier(B,w,linspace(0,1,11));
w(2) = 2;
a2 = rbezier(B,w,linspace(0,1,11));

w(2) = 0.2;
a3 = rbezier(B,w,linspace(0,1,11));
display(a1);
display(a2);
display(a3);


%visanje stopnje
B = [1 0; 1 4; -3 2; -3 -2; 1 -4; 1 0];
w = [1; 1/5; 1/5; 1/5; 1/5; 1];

%Dvig stopnje na 6:

[B,w] = rbezierelv(B,w);

display(B)
display(w)