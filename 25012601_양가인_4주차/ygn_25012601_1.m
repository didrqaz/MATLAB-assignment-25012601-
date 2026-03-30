%4-1
clear;
clc;

f1_1 = @(x) 0.3*x - sin(2*x);
f2_1 = @(x) 0.3 - 2*cos(2*x);%(d/dx)f1
fplot(f1_1, [0 4])
xlabel('x');
ylabel('0.3x-sin2x');
title('25012601 양가인 4-1');
f1zero1_1 = fzero(f1_1, 0)%근1
f1zero2_1 = fzero(f1_1, 4)%근2
min_1 = f1_1(fminbnd(f1_1, 0, 4))%최소값

%최소증명
f2zero1 = fzero(f2_1, [0 1])%미분식의 해 구하기
f2zero2 = fzero(f2_1, [1 3])
f2zero3 = fzero(f2_1, [3 4])

disp('minimum is ');%전체 최소값 = 극점의 최소값

disp(min([f1_1(f2zero1), f1_1(f2zero2), f1_1(f2zero3)]));