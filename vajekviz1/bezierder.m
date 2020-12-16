function db = bezierder(B,r,t)
% Opis:
%  bezierder vrne tocke na krivulji, ki predstavlja odvod
%  dane Bezierjeve krivulje
%
% Definicija:
%  db = bezierder(B,r,t)
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
for i=1:n
    X = decasteljau(B(:,1),t(i));
    Y = decasteljau(B(:,2),t(i));
    pom1 = diff(X(:,m-r), r);
    pom2 = diff(Y(:,m-r), r);
    db(i,1) = coef*pom1(1);
    db(i,2) = coef*pom2(1);
end
    
end