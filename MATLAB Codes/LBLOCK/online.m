function [ onln ] = online( ivpos,r,out )

len=length(ivpos);iv=zeros(2^len,64);c=de2bi(0:2^len-1);iv(:,ivpos)=c;

k=[0 0 0 0 0 0 0 1 0 0 1 0 0 0 1 1 0 1 0 0 0 1 0 1 0 1 1 0 0 1 1 1 1 0 0 0 1 0 0 1 1 0 1 0 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 1 1 1 0 0];

sum=0;
for l=1:2^len
    z=lblock(iv(l,:),k,r,out);
    sum=sum+z;
end
onln=mod(sum,2);

end

