clc;
clear;
f1 = csvread('iris.csv', 1, 0);
sepalLength = f1(1:length(f1), 1);
petalLength = f1(1:length(f1), 2);
d = f1(1:length(f1), 3);
Wt = [0, 0, 0];
for i = 1:length(f1)
    X = [sepalLength(i);petalLength(i); -1];
    O = sign(Wt * X)
    Wt = Wt + (0.5 * (d(i) - O) * X')
end