clear
clc

f = [5 18 42 27 8];
%A = cumsum(f);

%for 1st quartile

%q1 = (sum(f)+1)/4;
Q1 = quantile (f, 0.25);
Q2 = quantile (f, 0.50);
Q3 = quantile (f, 0.75);
q = (Q3-Q1)/2;