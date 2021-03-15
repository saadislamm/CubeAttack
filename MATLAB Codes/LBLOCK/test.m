function test = test(ivpos,r,out)

len=length(ivpos);iv=zeros(2^len,64);c=de2bi(0:2^len-1);iv(:,ivpos)=c;
T=100;n0=0;n1=0;

sum=0;              %p0=pci(iv,len,zeros(1,80),r);
for l=1:2^len
    z=lblock(iv(l,:),zeros(1,80),r,out);
    sum=sum+z;
end
p0=mod(sum,2);

if p0==1 n1=n1+1;else n0=n0+1;end

for i=1:T
    k1=randi([0 1],1,80);   % Random key 1
    k2=randi([0 1],1,80);   % Random key 2
    %34, 2d, 4b, 42, 7e, 12, 15, 4e, 61, 65
    %0c, 02, 46, 39, 61, 1d, 15, 2d, 7f, 25
    %1010 1011 1100 1101 1110 1111
    %k1=[0 0 1 1 0 1 0 0 0 0 1 0 1 1 0 1 0 1 0 0 1 0 1 1 0 1 0 0 0 0 1 0 0 1 1 1 1 1 1 0 0 0 0 1 0 0 1 0 0 0 0 1 0 1 0 1 0 1 0 0 1 1 1 0 0 1 1 0 0 0 0 1 0 1 1 0 0 1 0 1];
    %k2=[0 0 0 0 1 1 0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 1 1 0 0 0 1 1 1 0 0 1 0 1 1 0 0 0 0 1 0 0 0 1 1 1 0 1 0 0 0 1 0 1 0 1 0 0 1 0 1 1 0 1 0 1 1 1 1 1 1 1 0 0 1 0 0 1 0 1];
    %7d, 6f, 54, 4c, 63, 08, 41, 02, 5c, 4e
    %5e, 52, 01, 24, 00, 05, 2b, 69, 40, 26
    %k1=[0 1 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 0 1 0 1 0 0 0 1 0 0 1 1 0 0 0 1 1 0 0 0 1 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 1 0 1 1 1 0 0 0 1 0 0 1 1 1 0];
    %k2=[0 1 0 1 1 1 1 0 0 1 0 1 0 0 1 0 0 0 0 0 0 0 0 1 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 1 0 1 0 1 1 0 1 1 0 1 0 0 1 0 1 0 0 0 0 0 0 0 0 1 0 0 1 1 0];
    %05, 57, 2f, 49, 73, 2e, 58, 57, 52, 7d
    %61, 07, 44, 1b, 2d, 53, 19, 4c, 3c, 6a
    %k1=[0 0 0 0 0 1 0 1 0 1 0 1 0 1 1 1 0 0 1 0 1 1 1 1 0 1 0 0 1 0 0 1 0 1 1 1 0 0 1 1 0 0 1 0 1 1 1 0 0 1 0 1 1 0 0 0 0 1 0 1 0 1 1 1 0 1 0 1 0 0 1 0 0 1 1 1 1 1 0 1];
    %k2=[0 1 1 0 0 0 0 1 0 0 0 0 0 1 1 1 0 1 0 0 0 1 0 0 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 0 1 0 1 0 0 1 1 0 0 0 1 1 0 0 1 0 1 0 0 1 1 0 0 0 0 1 1 1 1 0 0 0 1 1 0 1 0 1 0];
    %17, 6c, 4f, 69, 6c, 03, 36, 68, 5f, 77
    %5c, 52, 7e, 72, 6f, 1e, 64, 60, 5a, 29
    %k1=[0 0 0 1 0 1 1 1 0 1 1 0 1 1 0 0 0 1 0 0 1 1 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 0 0 0 0 0 0 0 1 1 0 0 1 1 0 1 1 0 0 1 1 0 1 0 0 0 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1];
    %k2=[0 1 0 1 1 1 0 0 0 1 0 1 0 0 1 0 0 1 1 1 1 1 1 0 0 1 1 1 0 0 1 0 0 1 1 0 1 1 1 1 0 0 0 1 1 1 1 0 0 1 1 0 0 1 0 0 0 1 1 0 0 0 0 0 0 1 0 1 1 0 1 0 0 0 1 0 1 0 0 1];
    
    
    sum=0;          %p1=pci(iv,len,k1,r);
    for l=1:2^len
        z=lblock(iv(l,:),k1,r,out);
        sum=sum+z;
    end
    p1=mod(sum,2);
    
    sum=0;          %p2=pci(iv,len,k2,r);
    for l=1:2^len
        z=lblock(iv(l,:),k2,r,out);
        sum=sum+z;
    end
    p2=mod(sum,2);
    
    sum=0;          %p12=pci(iv,len,mod(k1+k2,2),r);
    for l=1:2^len
        z=lblock(iv(l,:),xor(k1,k2),r,out);
        sum=sum+z;
    end
    p12=mod(sum,2);
    
    % Update counters:
    if p1==1 n1=n1+1;else n0=n0+1;end
    if p2==1 n1=n1+1;else n0=n0+1;end
    
    % Linearity test:
    %if mod(p1+p2,2) ~= p12 && mod(p0+p1+p2,2) ~= p12
    if mod(p0+p1+p2,2) ~= p12
        % Non-Linear, add term:
        %fprintf('Non-Linear\n');
        %k=k+1;
        %r2=setdiff([1:80],ivpos);
        %ivpos=[ivpos r2(randi(80-length(ivpos)))]
        break;
    end
end
if n0==2*T+1 || n1==2*T+1
    % Constant, remove term:
    %fprintf('Constant\n');
    %ivpos=setdiff(ivpos,ivpos(randi(length(ivpos))))
    %k=k-1;
elseif i==T
    k=[zeros(1,80); diag(ones(1,80))];
    sum=0;          %p0=pci(iv,len,k(1,:),r);
    for l=1:2^len
        z=lblock(iv(l,:),k(1,:),r,out);
        sum=sum+z;
    end
    p0=mod(sum,2);
    if p0==1 p=1;else p=0;end
    S=[p0];
    for b=1:80
    sum=0;          %pck=pci(iv,len,k(b+1,:),r);
    for l=1:2^len
        z=lblock(iv(l,:),k(b+1,:),r,out);
        sum=sum+z;
    end
    pck=mod(sum,2);
    if xor(pck,p)==1 S=[S,b];end
    end
    ivpos
    S
end