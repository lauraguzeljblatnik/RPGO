function BS = beziersubK (B , t , k)
% Opis :
% beziersub izvede subdivizijo Bezierjeve krivulje
%
% Definicija :
% BS = beziersubK (B,t, k)
%
% Vhodni podatki :
% B matrika kontrolnih točk Bezierjeve krivulje , v
% kateri vrstica predstavlja eno kontrolno točko ,
% t parameter subdivizije Bezierjeve krivulje
% k št. zaporednih subdivizij
%
% Izhodni podatek :
% BS celica , ki vsebuje kontrolne točke dveh krivulj , ki
% jih dobimo s subdivizijo prvotne Bezierjeve krivulje
n = size(B,1);
d = size(B,2);
BS = cell(2^k,1);
BS{1} = B;

for i=1:k
   for j = 2^(i):-2:2
       X = beziersub(BS{j/2},t);
       BS{j} = X{2};
       BS{j-1} = X{1}; 
   end
end

end