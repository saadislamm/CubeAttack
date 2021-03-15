clear all;
clc;

tic;
for i=1:100000
    r2=randperm(80);
    test(r2(1:6),577)
end

toc;