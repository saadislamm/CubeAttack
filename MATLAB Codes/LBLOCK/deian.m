clear all;
clc;
tic;
%c1=nchoosek(1:64,1);
%c2=nchoosek(1:64,2);
c3=nchoosek(1:64,3);
%test(c3(i,:),3);
%c5=nchoosek(1:64,5);
%r2=randperm(64);
%64C3=41664
%64C5=7624512
%64C4=635376
%test(r2(1:3),7);

parfor i=1:41664
    test(c3(i,:),7,1);
end
toc;