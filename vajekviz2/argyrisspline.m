function S = argyrisspline(tri,f,Df,Hf)
% Opis:
%  argyrisspline izracuna Bezierjeve predstavitve polinomov,
%  ki dolocajo Argyrisov zlepek nad triangulacijo
%
% Definicija:
%  S = argyrisspline(tri,f,Df,Hf)
%
% Vhodni podatki:
%  tri  objekt razreda triangulation, ki doloca
%       triangulacijo domene, nad katero aproksimiramo
%       funkcijo f,
%  f    funkcija, ki jo interpoliramo,
%  Df   gradient funkcije, ki jo interpoliramo,
%  Hf   Hessejeva matrika funkcije, ki jo interpoliramo
%
% Izhodni podatek:
%  S    celica z dolzino, ki ustreza stevilu trikotnikov v
%       triangulaciji, v kateri vsak element vsebuje matriko
%       velikosti 6 x 6, ki predstavlja koeficiente
%       Argyrisovega polinoma v Bezierjevi obliki

tocke = tri.Points; %vrstica določa kartezične koordinate točk
trikotniki = tri.ConnectivityList; %vrstica določa indekse točk, ki predstavljajo trikotnik
n = size(trikotniki,1); %število trikotnikov
S = cell(1,n);

for i = 1:n
    trikotnik = trikotniki(i,:);
    V1 = tocke(trikotnik(1),:);
    V2 = tocke(trikotnik(2),:);
    V3 = tocke(trikotnik(3),:);
    T = [V1;V2;V3];
    S{1,i} = argyris(T,f,Df,Hf);
end