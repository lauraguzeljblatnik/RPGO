function b = blossom3 (B , U)
% Opis :
% blossom3 izračuna razcvet polinoma dveh spremenljivk
%
% Definicija :
% b = blossom3 (B,U)
%
% Vhodna podatka :
% B matrika velikosti n+1 x n+1 , ki predstavlja
% koeficiente polinoma dveh spremenljivk stopnje n v
% Bezierjevi obliki ( element matrike na mestu (i,j),
% j <= n+2 -i, določa koeficient polinoma z indeksom
% (n+2 -i-j, j -1 , i -1) ),
% U matrika velikosti n x 3 , v kateri vrstice
% predstavljavo baricentrične koordinate točk ali
% vektorjev glede na domenski trikotnik , za katere
% izvajamo razcvet polinoma
%
% Izhodni podatek :
% b vrednost razcveta polinoma , določenega z matriko B,
% v točkah , določenih z matriko U

% stopnja
n = size(U,1);

B1=B;
for r=1:n
    s1 = n+1-r;
    t1 = zeros(s1);
    for i=1:s1
        for j=1:(s1+1-i)
            t1(i,j)=U(r,1)*B1(i,j)+U(r,2)*B1(i,j+1)+U(r,3)*B1(i+1,j);
        end
    end
    B1=t1;
end
b=B1(1,1);

end