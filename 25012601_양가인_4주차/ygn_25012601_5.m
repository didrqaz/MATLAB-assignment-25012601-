%4-5

f5 = @(x) 30*x.^2 - 300.*x + 4;

%a
fplot(f5, [0 10]);
title("25012601 양가인; 4주차 5번 (a)");
xlabel('x');
ylabel('30x²-300x+4');

%b
f5min = fminbnd(f5, 4.5, 5.5)