function [ S0 ] = S0( k )
if k==[0 0 0 0] S0=[1 1 1 0];
elseif k==[0 0 0 1] S0=[1 0 0 1];
elseif k==[0 0 1 0] S0=[1 1 1 1];
elseif k==[0 0 1 1] S0=[0 0 0 0];
elseif k==[0 1 0 0] S0=[1 1 0 1];
elseif k==[0 1 0 1] S0=[0 1 0 0];
elseif k==[0 1 1 0] S0=[1 0 1 0];
elseif k==[0 1 1 1] S0=[1 0 1 1];
elseif k==[1 0 0 0] S0=[0 0 0 1];
elseif k==[1 0 0 1] S0=[0 0 1 0];
elseif k==[1 0 1 0] S0=[1 0 0 0];
elseif k==[1 0 1 1] S0=[0 0 1 1];
elseif k==[1 1 0 0] S0=[0 1 1 1];
elseif k==[1 1 0 1] S0=[0 1 1 0];
elseif k==[1 1 1 0] S0=[1 1 0 0];
else S0=[0 1 0 1];
end