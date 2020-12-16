function b = bezier (B , t )
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
b = zeros(n,2);
n1 = size(B,1);

for i=1:n
    X = decasteljau(B(:,1),t(i));
    Y = decasteljau(B(:,2),t(i));
    b(i,1) = X(1,n1);
    b(i,2) = Y(1,n1);
end

end