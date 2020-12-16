function B = beziercubspline(u,D)
% Opis:
%  beziercubspline izracuna sestavljeno Bezierjevo krivuljo
%  stopnje 3, ki je dvakrat zvezno odvedljiva v stikih
%
% Definicija:
%  B = beziercubspline(u,D)
%
% Vhodna podatka:
%  u    seznam parametrov delitve dolzine m+1,
%  B    seznam dolzine m, v kateri je vsak element mat
%  D    matrika, v kateri vsaka izmed m+3 vrstic predstavlja
%       eno kontrolno tocko sestavljene krivulje
%
% Izhodni podatek:rika s
%       stirimi vrsticami, ki dolocajo kontrolne tocke kosa
%       sestavljene krivulje

m = size(u,2) - 1;
B = cell(m,1);
b = zeros(m,2);
b(1,:) = D(1,:);
b(2,:) = D(2,:);
b(3,:) = ((u(3)-u(2))/(u(3)-u(1)))*D(2,:) + ((u(2)-u(1))/(u(3)-u(1))) *D(3,:);
B{1} = b;
for i= 2:(m-1)
    b_i = zeros(m,2);
    b_i(2,:) = ((u(i+2)-u(i))/(u(i+2)-u(i-1)))*D(i+1,:) + ((u(i)-u(i-1))/(u(i+2)-u(i-1)))*D(i+2,:);
    b_i(3,:) = ((u(i+2)-u(i+1))/(u(i+2)-u(i-1)))*D(i+1,:) + ((u(i+1)-u(i-1))/(u(i+2)-u(i-1)))*D(i+2,:);
    B{i} = b_i;
end

b_m = zeros(m,2);
b_m(2,:) = ((u(m+1)-u(m))/(u(m+1)-u(m-1)))*D(m+1,:) + ((u(m)-u(m-1))/(u(m+1)-u(m-1))) *D(m+2,:);
b_m(3,:) = D(m+2,:);
b_m(4,:) = D(m+3,:);
B{m} = b_m;
for i= 1:(m-1)
   b_mm = ((u(i+2)-u(i+1))/(u(i+2)-u(i)))*B{i}(3,:) + ((u(i+1)-u(i))/(u(i+2)-u(i)))*B{i+1}(2,:);
   B{i}(4,:) = b_mm;
   B{i+1}(1,:) = b_mm;
end
    