disp("1번 문제");
v = [-2 -1 0 1 2];

square1 = squareVec(v)
mean1 = meanVec(v)
mixedtransform1 = mixedTransform(v)
%1-1
function y = squareVec(x)
y = x.^2;
end
%1-2
function y = meanVec(x)
y = mean(x);
end
%1-3
function y = mixedTransform(x)
y = x;
for i=1:length(x)
    if (y(1, i) < 0)
        y(1, i) = y(1, i) * -1;
    elseif (y(1, i) > 0)
        y(1, i) = 2 * y(1 , i) + 1;
    end
end
end

disp("2번 문제\n")
%2-1
name = input("학생 이름을 입력하시오.: ", 's');
%2-2
score = input("학생 성적을 벡터 형태로 입력하시오.: ");
%2-3
avg_2 = mean(score);
fprintf("이름: %s\n", name)
fprintf("국어: %d\n영어: %d\n수학: %d\n", score(1), score(2), score(3))
fprintf("평균: %.2f\n", avg_2)
%2-4
if avg_2 >= 90
    fprintf("Exellent\n");
elseif avg_2 >= 80
    fprintf("Good\n");
elseif avg_2 >= 70
    fprintf("Fair\n");
else fprintf("Needs Improvement\n");
end

disp("3번 문제")
applicants = [
    165 72 1;
    172 85 0;
    168 91 1;
    181 77 1;
    174 69 0;
    169 88 1;
    ]
%3-1
h170 = applicants(:,1) >= 170
%3-2
s80 = applicants(:, 2) >= 80
%3-3
p1 = applicants(:, 3)
%3-4
selected = find(h170 & s80 & p1)
%3-5
final = [selected, applicants(selected,:)]
