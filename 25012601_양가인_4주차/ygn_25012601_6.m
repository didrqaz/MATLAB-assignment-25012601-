%4-6

h = @(z) 6*exp(z);
g = @(y) 3*cos(y);
f = @(x) x.^2;

j = @(x) h(g(f(x)));

fplot(j, [0 4]);
title('25012601 양가인; 4주차 6번');
xlabel('x');
ylabel('6e^(3cosx²');