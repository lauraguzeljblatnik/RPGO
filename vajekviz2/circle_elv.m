%test višanje stopnje za krožnico
axis equal
hold on
t = linspace(0,1,100);
%visanje stopnje
B = [1 0; 1 4; -3 2; -3 -2; 1 -4; 1 0];
w = [1; 1/5; 1/5; 1/5; 1/5; 1];

display(B)
display(w)
rplotcircle (B , w, t)
plotbezier (B,t)


for i = 1:10
   [B,w] = rbezierelv(B,w);
   plotbezier(B,t)
end


hold off
