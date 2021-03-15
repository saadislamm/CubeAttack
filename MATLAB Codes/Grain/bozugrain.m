function boz = bozugrain(ivpos,r)

len=length(ivpos);

k=[zeros(1,80); diag(ones(1,80))];

iv=zeros(2^len,64);
c=de2bi(0:2^len-1);
iv(:,ivpos)=c;

sum=0;
for l=1:2^len
    z=roundsgrain(iv(l,:),k(1,:),r);
    sum=sum+z;
end
if mod(sum,2)==1
    fprintf('1\t');
    p=1;
else
    p=0;
end
    
for b=1:80
    sum=p;
for l=1:2^len
    z=roundsgrain(iv(l,:),k(b+1,:),r);
    sum=sum+z;
end   
if mod(sum,2)==1
    fprintf('k%d\t',b)
end
end
fprintf('\n')