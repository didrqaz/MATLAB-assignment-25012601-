%4-3

clc;
clear;
%a:
%h = 3V/πr²
%A = πr * √(r² + (3V/πr²)²

%b:(함수파일에)


%c
global V;
V = 10; %(in³)
r_minA_3 = fminbnd(@ygn_25012601_func_3b, 0.1, 5)%면적 A를 최소화하는 r값
h_minA_3 = (3*V) / (pi*r_minA_3.^2)%면적 A를 최소화하는 r값에 상응하는 h값

fplot(@ygn_25012601_func_3b, [0.1 5])
xlabel('r');
ylabel('A');

minAx110per_3 = (ygn_25012601_func_3b(r_minA_3))*110/100%면적최소값110%
f3c = @(r) ygn_25012601_func_3b(r) - minAx110per_3;
abs(fzero(f3c, r_minA_3) - r_minA_3) %r의 면적 최소값*110% 증가 전까지 벗어날 수 있는 최대 범위
