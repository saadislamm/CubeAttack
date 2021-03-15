function [ S5 ] = S5( k )
if k==[0 0 0 0] S5=[0 0 1 0];
elseif k==[0 0 0 1] S5=[1 1 0 1];
elseif k==[0 0 1 0] S5=[1 0 1 1];
elseif k==[0 0 1 1] S5=[1 1 0 0];
elseif k==[0 1 0 0] S5=[1 1 1 1];
elseif k==[0 1 0 1] S5=[1 1 1 0];
elseif k==[0 1 1 0] S5=[0 0 0 0];
elseif k==[0 1 1 1] S5=[1 0 0 1];
elseif k==[1 0 0 0] S5=[0 1 1 1];
elseif k==[1 0 0 1] S5=[1 0 1 0];
elseif k==[1 0 1 0] S5=[0 1 1 0];
elseif k==[1 0 1 1] S5=[0 0 1 1];
elseif k==[1 1 0 0] S5=[0 0 0 1];
elseif k==[1 1 0 1] S5=[1 0 0 0];
elseif k==[1 1 1 0] S5=[0 1 0 0];
else S5=[0 1 0 1];
end