function pc = pci(iv,len,k,r)



sum=0;
for l=1:2^len
    z=rounds(iv(l,:),k(1,:),r);
    sum=sum+z;
end
pc=mod(sum,2)==1;