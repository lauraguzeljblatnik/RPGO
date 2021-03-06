function plotbezierColor (B , t, color)
% Opis :
% plotbezier nariše Bezierjevo krivuljo za dane kontrolne
% točke in seznam parametrov
%
% Definicija :
% plotbezier (B,t)
%
% Vhodni podatki :
% B matrika velikosti n+1 x d, ki predstavlja kontrolne
% točke Bezierjeve krivulje stopnje n v
% d- dimenzionalnem prostoru ,
% t seznam parametrov dolžine k, pri katerih računamo
% vrednost Bezierjeve krivulje

b = bezier(B,t);

hold on
plot(b(:,1),b(:,2), color)
hold off