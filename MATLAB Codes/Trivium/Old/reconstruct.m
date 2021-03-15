clear all;
clc;

ivpos=[4, 7, 12, 15, 8, 33];
r=580;

len=length(ivpos);

syms k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k12 k14 k15 k16 k17 k18 k19 k20 k21 k22 k23 k24 k25 k26 k27 k28 k29 k30 k31 k32 k33 k34 k35 k36 k37 k38 k39 k40 k41 k42 k43 k44 k45 k46 k47 k48 k49 k50 k51 k52 k53 k54 k55 k56 k57 k58 k59 k60 k61 k62 k63 k64 k65 k66 k67 k68 k69 k70 k71 k72 k73 k74 k75 k76 k77 k78 k79 k80;
%k=[k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k12 k14 k15 k16 k17 k18 k19 k20 k21 k22 k23 k24 k25 k26 k27 k28 k29 k30 k31 k32 k33 k34 k35 k36 k37 k38 k39 k40 k41 k42 k43 k44 k45 k46 k47 k48 k49 k50 k51 k52 k53 k54 k55 k56 k57 k58 k59 k60 k61 k62 k63 k64 k65 k66 k67 k68 k69 k70 k71 k72 k73 k74 k75 k76 k77 k78 k79 k80];
k=[0,k2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,k65,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];


iv=zeros(2^len,80);c=de2bi(0:2^len-1);iv(:,ivpos)=c;

sum=0;
    
for l=1:2^len
    z=rounds(iv(l,:),k,r);
    sum=mod(sum+z,2)
end
