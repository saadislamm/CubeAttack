function lin = linearity(ivpos,r)

len=length(ivpos);iv=zeros(2^len,80);c=de2bi(0:2^len-1);iv(:,ivpos)=c;

S=bozu(ivpos,r)
allzero = S(1);
S=S(2:length(S));
num=73;

for b=1:num
    k=randi([0 1],1,80);
    hwlsb = allzero;
    hwlsb=mod(hwlsb+sum(k(S)),2);
    randinput=pci(iv,len,k,r);
    if mod(hwlsb+randinput,2)~=0
    break;
    end
end
if b==num
    lin=ivpos;
else
    lin='Nonlinear';
    ivpos
end