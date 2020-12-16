%test 1 vaja

%bernstein
format long

p = [4 7 2 8 9 1 4];
b = power2bernstein(p);
bernstein2power(b);

p1 = rand(1,5);
bernstein2power(power2bernstein(p1));
any(p1 - bernstein2power(power2bernstein(p1)) > 1e-10);

% De Casteljaujev postopek

B = [0 0; 1 2; 3 3; 4 -1; 0 2];

decasteljau(B(:,1),0)
decasteljau(B(:,2),0);
decasteljau(B(:,1),1);
decasteljau(B(:,2),1);
decasteljau(B(:,1),0.5);
decasteljau(B(:,2),0.5);

t = linspace(0,1,100);
bezier(B,t)

%plotbezier (B , t)

fi = pi/3;
B_rot = B*[cos(fi) -sin(fi); sin(fi) cos(fi)]';

%plotbezier(B_rot,t)

