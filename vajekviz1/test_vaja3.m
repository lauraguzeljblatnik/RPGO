% test 3 vaja
%Subdivizija Bezierjeve krivulje

%kontrolne tocke Bezierjeve krivulje
B = [0 0; 2 3; 4 2; 5 -1];

%korak subdivizije pri parametru 0.5
%BS = beziersub(B,0.5);
%BS = beziersubK(B,0.2,1);

%BS{1}
%BS{2}
%BS trije koraki subdivizije pri parametru 0.5
BS8 = beziersubK(B,0.5,3);
t = linspace(0,1,100);

BS8{1}
BS8{2}
BS8{3}
BS8{4}
BS8{5}
BS8{6}
BS8{7}
BS8{8}

plotbezier(B,t)
for i=1:8
    plotbezier(BS8{i},t)
end    
%Visanje stopnje Bezierjeve krivulje

%kontrolne tocke Bezierjeve krivulje
%B = [0 0; 2 6; 3 0; 5 4; 7 1; 5 5; 10 6];
%t = linspace(0,1,100);
%plotbezier(B,t)

%visanje stopnje za 1
%bezierelv1(B)
b1 = bezierelv(B,1);
%plotbezier(b1,t)
%visanje stopnje za 2
b2 = bezierelv(B,2);

%visanje stopnje za 3
b3 = bezierelv(B,3);

%visanje stopnje za 10
b10 = bezierelv(B,10);

%visanje stopnje za 30
b30 = bezierelv(B,30);
%plotbezier(b30,t)