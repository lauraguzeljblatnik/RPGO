function b = bezier_lsq (B , t )
% Opis :
% bezier vrne točke na Bezierjevi krivulji pri danih
% parametrih
%
% Definicija :
% b = bezier (B,t)

% Vhodna podatka :
% B matrika velikosti n+1 x d, ki predstavlja kontrolne
% točke Bezierjeve krivulje stopnje n v
% d- dimenzionalnem prostoru ,
% t seznam parametrov dolžine k, pri katerih računamo
% vrednost Bezierjeve krivulje
%
% Izhodni podatek :
% b matrika velikosti k x d, kjer i-ta vrstica
% predstavlja točko na Bezierjevi krivulji pri
% parametru iz t na i- tem mestu

n = size(t,2);
d = size(B,2);
b = zeros(n,d);
n1 = size(B,1);

for i=1:n
    for j =1:d
        X = decasteljau(B(:,j),t(i));
        b(i,j) = X(1,n1);
    end
end


end