function Be = bezierelv1(B)
% Opis:
%  bezierelv1 izvede ENO visanje stopnje dane Bezierjeve krivulje
%
% Definicija:
%  Be = bezierelv(B)
%
% Vhodna podatka:
%  B    matrika velikosti (n+1) x d, v kateri vsaka vrstica
%       predstavlja d-dimenzionalno kontrolno tocko
%       Bezierjeve krivulje stopnje n
%
% Izhodni podatek:
%  Be   matrika velikosti (n+1) x d, v kateri vsaka
%       vrstica predstavlja d-dimenzionalno kontrolno tocko
%       Bezierjeve krvulje stopnje n, ki ustreza dani
%       Bezierjevi krivulji

n = size(B,1);
d = size(B,2);
Be = zeros(n+1, d); 
Be(1,:) = B(1,:);
Be(n+1,:) = B(n,:);

for i=2:n
    Be(i,:) = B(i-1,:)*((i-1)/n) + B(i,:)*(1-((i-1)/n)); 
end

end


