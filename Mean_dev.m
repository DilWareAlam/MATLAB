clear
clc

f = [8 10 16 14 10 5 2];
x = [55 65 75 85 95 105 115];

xf = sum(f.*x);

fp = sum(f);

xbar = xf/fp;

fprintf('Mean value of X: %.2f\n',xbar); % mean print

%mean deviation start
a = abs(x-xbar);

b = sum(f.*a);

md = b/fp;

fprintf('Mean deviation: %.2f\n',md); %mean deviation print