function b = power2bernstein ( p )
% Opis :
% power2bernstein pretvori polinom , predstavljen s
% koeficienti v potenčni bazi , v polinom , predstavljen
% v Bernsteinovi bazi
%
% Definicija :
% b = power2bernstein (p)
%
% Vhodni podatek :
% p seznam koeficientov dolžine n+1 , ki po vrsti
% pripadajo razvoju polinoma stopnje n v potenčni
% bazi od x^n do 1
%
% Izhodni podatek :
% b seznam koeficientov dolžine n+1 , ki po vrsti
% pripadajo razvoju polinoma stopnje n v Bernsteinovi
% bazi od 0 - tega do n- tega Bernsteinovega baznega
% polinoma

n = size(p,2);
b = zeros(1,n);
for i=1:n
    for j=i:n
        b(n-i+1)= b(n-i+1) + (nchoosek(j-1,i-1)/nchoosek(n-1,i-1))*p(j);
    end
end
b;
end


