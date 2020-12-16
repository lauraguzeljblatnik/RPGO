function db = bezierder_kontrolneTocke(B,r,t)
% Opis:
%  bezierder vrne tocke na krivulji, ki predstavlja odvod
%  dane Bezierjeve krivulje
%
% Definicija:
%  db = bezierder_kontrolneTocke(B,r,t)
%
% Vhodni podatki:
%  B    matrika kontrolnih tock Bezierjeve krivulje, v
%       kateri vsaka vrstica predstavlja eno kontrolno
%       tocko,
%  r    stopnja odvoda, ki ga racunamo,
%  t    seznam parameterov, pri katerih racunamo odvod
%
% Izhodni podatek:
%  db   matrika, v kateri vsaka vrstica predstavlja tocko
%       r-tega odvoda pri istoleznem parametru iz seznama t

n = size(t,2);
db = zeros(n,2);
m = size(B,1);

coef = factorial(m-1)/factorial(m-r-1);

db = coef*diff(B,r);
    
end