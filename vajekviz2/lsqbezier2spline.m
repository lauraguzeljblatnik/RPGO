function S = lsqbezier2spline (M ,N ,m ,n , P )
% Opis :
% lsqbezier2spline vrne kontrolne točke tenzorskih
% polinomov , ki določajo zvezno odvedljiv zlepek , ki v
% smislu metode najmanjših kvadratov najbolje aproksimira
% dane podatke
%
% Definicija :
% S = lsqbezier2spline (M,N,m,n,P)
%
% Vhodni podatki :
% M,N parametra , ki določata delitev domene ,
% m,n parametra , ki določata stopnjo polinoma nad
% pravokotnikom delitve ,
% P matrika podatkov , ki v vsaki vrstici vsebuje
% parametra z intervala [0 ,1] ter njima
% pripadajočo vrednost , ki jo aproksimiramo
%
% Izhodni podatek :
% S celica velikosti N+1 x M+1 , v kateri vsak
% element vsebuje matriko s koeficienti polinoma ,
% ki določa zlepek nad pravokotnikom delitve
% domene

S = cell(N, M);
%st delilnih tock x 
st_x = m*M +1;
%st delilnih tock v y
st_y = n*N +1;

%delitev
U = linspace(0,1,M+1); 
V = linspace(0,1,N+1);

for I = 1:M
    for J = 1:N
        %poiščemo x in y ki so v tem kvadratu
        x = find(P(:,1)>=U(I) & P(:,1)<=U(I+1));
        y = find(P(:,2)>=V(J) & P(:,2)<=V(J+1));
        kvadrat = intersect(x,y);
        val = P(kvadrat',:);
        %normalizirano x in y na [0,1]
        val(:,1) = (val(:,1)-U(I))./(U(I+1)-U(I));
        val(:,2) = (val(:,2)-V(J))./(V(J+1)-V(J));
        
        %Izračunamo kontrolne po MNK:
        S{J,I} = lsqbezier2(m,n,val);
    end
end

%pogoji gladkosti na robu

%sive točke
for I = 1:M
    for J = 2:N
        % gremo po vseh kvadratih
        bJ1 = S{J-1,I};
        bJ = S{J,I};
        bJ1(n+1,:) = 1/2*bJ1(n,:) + 1/2*bJ(2,:);
        bJ(1,:) = 1/2*bJ1(n,:) + 1/2*bJ(2,:);
        S{J-1,I} = bJ1;
        S{J,I} = bJ;
    end
end

for J = 1:N
    for I = 2:M
        bI1 = S{J,I-1};
        bI = S{J,I};
        bI1(:,m+1) = 1/2*bI1(:,m) + 1/2*bI(:,2);
        bI(:,1) = 1/2*bI1(:,m) + 1/2*bI(:,2);
        S{J,I-1} = bI1;
        S{J,I} = bI;
    end
end

%bele točke
for I=2:M
    for J = 2:N
        b_IJ = S{J,I};
        b_I1J = S{J,I-1};
        b_I1J1 = S{J-1,I-1};
        b_IJ1 = S{J-1,I};
        a1 = 1/4* b_IJ(2,2) + 1/4*b_I1J(2, m) + 1/4*b_I1J1(n,m) + 1/4*b_IJ1(n,2);
        b_IJ(1,1) = a1;
        b_I1J(1,m+1) = a1 ;
        b_I1J1(n+1,m+1) = a1;
        b_IJ1(n+1,1) = a1; 
        S{J,I} = b_IJ;
        S{J,I-1} = b_I1J;
        S{J-1,I-1} = b_I1J1;
        S{J-1,I} = b_IJ1;        
    end
end



end
