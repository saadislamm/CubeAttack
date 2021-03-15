function test = test(ivpos,r,out)

len=length(ivpos);iv=zeros(2^len,64);c=de2bi(0:2^len-1);iv(:,ivpos)=c;
T=20;n0=0;n1=0;

%p0=pci(iv,len,zeros(1,80),r);
sum=0;
for l=1:2^len
    z=lblock(iv(l,:),zeros(1,80),r,out);
    sum=sum+z;
end
p0=mod(sum,2);

if p0==1 n1=n1+1;else n0=n0+1;end

for i=1:T
    k1=randi([0 1],1,80);   % Random key 1
    k2=randi([0 1],1,80);   % Random key 2
    %p1=pci(iv,len,k1,r);
    sum=0;
    for l=1:2^len
        z=lblock(iv(l,:),k1,r,out);
        sum=sum+z;
    end
    p1=mod(sum,2);
    %p2=pci(iv,len,k2,r);
    sum=0;
    for l=1:2^len
        z=lblock(iv(l,:),k2,r,out);
        sum=sum+z;
    end
    p2=mod(sum,2);
    %p12=pci(iv,len,mod(k1+k2,2),r);
    sum=0;
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
    
    if p0==1 p=1;else p=0;end
    S=[p0];
    for b=1:80 
    sum=0;
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