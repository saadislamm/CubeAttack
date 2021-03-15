
function test = test(ivpos,r)

len=length(ivpos);iv=zeros(2^len,80);c=de2bi(0:2^len-1);iv(:,ivpos)=c;

T=20;
n0=0;
n1=0;
p0=pci(iv,len,zeros(1,80),r);
if p0==1 n1=n1+1;else n0=n0+1;end

for i=1:T
    k1=randi([0 1],1,80);   % Random key 1
    k2=randi([0 1],1,80);   % Random key 2
    p1=pci(iv,len,k1,r);
    p2=pci(iv,len,k2,r);
    p12=pci(iv,len,mod(k1+k2,2),r);
    
    % Update counters:
    if p1==1 n1=n1+1;else n0=n0+1;end
    if p2==1 n1=n1+1;else n0=n0+1;end
    
    % Linearity test:
    if mod(p0+p1+p2,2) ~= p12
        % Non-Linear, add term:
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
    test=ivpos-1;
end