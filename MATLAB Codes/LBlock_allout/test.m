function test = test(ivpos,r)

len=length(ivpos);iv=zeros(2^len,64);c=de2bi(0:2^len-1);iv(:,ivpos)=c;
T=20;n0=zeros(1,64);n1=zeros(1,64);count=zeros(1,64);

sum=0;              %p0=pci(iv,len,zeros(1,80),r);
for l=1:2^len
    z=lblock(iv(l,:),zeros(1,80),r);
    sum=sum+z;
end
p0=mod(sum,2);

for pp0=1:64
if p0(pp0)==1 n1(pp0)=n1(pp0)+1;else n0(pp0)=n0(pp0)+1;end
end



for i=1:T
    
    k1=randi([0 1],1,80);   % Random key 1
    k2=randi([0 1],1,80);   % Random key 2

    sum=0;          %p1=pci(iv,len,k1,r);
    for l=1:2^len
        z=lblock(iv(l,:),k1,r);
        sum=sum+z;
    end
    p1=mod(sum,2);
    
    sum=0;          %p2=pci(iv,len,k2,r);
    for l=1:2^len
        z=lblock(iv(l,:),k2,r);
        sum=sum+z;
    end
    p2=mod(sum,2);
    
    sum=0;          %p12=pci(iv,len,mod(k1+k2,2),r);
    for l=1:2^len
        z=lblock(iv(l,:),xor(k1,k2),r);
        sum=sum+z;
    end
    p12=mod(sum,2);
    
    % Update counters:
    for pp12=1:64
    if p1(pp12)==1 n1(pp12)=n1(pp12)+1;else n0(pp12)=n0(pp12)+1;end
    if p2(pp12)==1 n1(pp12)=n1(pp12)+1;else n0(pp12)=n0(pp12)+1;end
    end
    
    %if mod(p1+p2,2) ~= p12 && mod(p0+p1+p2,2) ~= p12
    
    for pp12=1:64   % Linearity test:
        if mod(p0(pp12)+p1(pp12)+p2(pp12),2) ~= p12(pp12)
        count(pp12)=count(pp12)+1;
        end
    end

    if count~=0
        break;
    end
end

for cc=1:64         %Constant Test
if count(cc)==0
    if n0(cc)~=2*T+1 && n1(cc)~=2*T+1
        ivpos
        cc
    end
end
end
