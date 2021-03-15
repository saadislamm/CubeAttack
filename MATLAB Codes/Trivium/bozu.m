function boz = bozu(ivpos,r)

k=[zeros(1,80); diag(ones(1,80))];

len=length(ivpos);iv=zeros(2^len,80);c=de2bi(0:2^len-1);iv(:,ivpos)=c;

p0=pci(iv,len,k(1,:),r);
if p0==1 p=1;else p=0;end
S=[p0];

for b=1:80 
pck=pci(iv,len,k(b+1,:),r);
if mod(pck+p,2)==1 S=[S,b];end
end
boz=S;