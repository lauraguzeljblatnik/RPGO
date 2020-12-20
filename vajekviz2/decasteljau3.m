function T = decasteljau3(B,tocka)
% izračuna vrednost polinoma

%tocka je podana v baricentričnih koordinatah
n=length(B(1,:));
U=zeros(n-1,3);
for i=1:(n-1)
    U(i,:)=tocka;
end
T=blossom3(B,U);
end

