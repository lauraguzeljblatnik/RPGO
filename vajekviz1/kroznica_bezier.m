% aproksimacija krožnice z bezierjevi krivuljami
figure
axis equal;

phi = pi/6;
st_rotacij = pi/phi;
t = linspace(0,1,1001);
rot =[cos(fi) -sin(fi); sin(fi) cos(fi)]';

%1. postopek, n = 2

b0 = [ cos(phi), -sin(phi)];
b2 = [ cos(phi), sin(phi)];
b1 = [ 1/cos(phi), 0];

B1 = [b2; b1; b0];

k1 = bezier (B1 , t );
napaka1 = NaN;
for i=1:1000
    dist = sqrt((k1(i,1))^2+ k1(i,2)^2);
    napaka1 = max(napaka1, abs(1-dist));
end
display(napaka1);

hold on
for i = 1:st_rotacij
   plotbezierColor(B1,t, 'r')
   B1 = B1*rot;
end

%2. postopek, n = 3
n=3;
b0 = [ cos(phi), -sin(phi)];
b3 = [ cos(phi), sin(phi)];
b1 = [ cos(phi)+1/3*sin(phi), -sin(phi) + 1/n*cos(phi)];
b2 = [ cos(phi)+1/3*sin(phi), sin(phi) - 1/n*cos(phi)];

B2 = [b3; b2; b1; b0];

k2 = bezier (B2 , t );
napaka2 = NaN;
for i=1:1000
    dist = sqrt((k2(i,1))^2+ k2(i,2)^2);
    napaka2 = max(napaka2, abs(1-dist));
end
display(napaka2);

for i = 1:st_rotacij
   plotbezierColor(B2,t, 'g')
   B2 = B2*rot;
end

%3.postopek, n = 3
n=3;
b0 = [ cos(phi), -sin(phi)];
b3 = [ cos(phi), sin(phi)];
b1 = 1/3*[4-cos(phi), 4*cot(phi) - 4/sin(phi) + sin(phi)];
b2 = 1/3*[4-cos(phi), -4*cot(phi) + 4/sin(phi) - sin(phi)];

B3 = [b3; b2; b1; b0];

k3 = bezier (B3 , t );
napaka3 = NaN;
for i=1:1000
    dist = sqrt((k3(i,1))^2+ k3(i,2)^2);
    napaka3 = max(napaka3, abs(1-dist));
end
display(napaka3);

for i = 1:st_rotacij
   plotbezierColor(B3,t, 'b')
   B3 = B3*rot;
end


% pravi krog
th = 0:pi/50:2*pi;
xunit = 1 * cos(th);
yunit = 1 * sin(th);
%plot(xunit, yunit, 'k')
hold off