function p = bernstein2power ( b )
% Opis :
% bernstein2power pretvori polinom , predstavljen s
% koeficienti v bernsteinovi bazi , v polinom , predstavljen
% v potenčni bazi
%
% Definicija :
% p = bernstein2power (b)
%
% Vhodni podatek :
% b seznam koeficientov dolžine n+1 , ki po vrsti
% pripadajo razvoju polinoma stopnje n v Bernsteinovi
% bazi od 0 - tega do n- tega Bernsteinovega baznega
% polinoma
%
% Izhodni podatek :
% p seznam koeficientov dolžine n+1 , ki po vrsti
% pripadajo razvoju polinoma stopnje n v potenčni
% bazi od x^n do 1

n = size(b,2);
p = zeros(1,n);
for i=1:n
    for j=i:n
        p(i) = p(i) + (-1)^(i+j)*nchoosek(n-1,j-1)*nchoosek(j-1,i-1)*b(n+1-j);
    end
end

end