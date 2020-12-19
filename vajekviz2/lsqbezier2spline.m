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


end
