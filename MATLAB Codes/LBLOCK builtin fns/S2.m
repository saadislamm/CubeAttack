function [ S2 ] = S2( k )
if k==[0 0 0 0] S2=[0 0 0 1];
elseif k==[0 0 0 1] S2=[1 1 1 0];
elseif k==[0 0 1 0] S2=[0 1 1 1];
elseif k==[0 0 1 1] S2=[1 1 0 0];
elseif k==[0 1 0 0] S2=[1 1 1 1];
elseif k==[0 1 0 1] S2=[1 1 0 1];
elseif k==[0 1 1 0] S2=[0 0 0 0];
elseif k==[0 1 1 1] S2=[0 1 1 0];
elseif k==[1 0 0 0] S2=[1 0 1 1];
elseif k==[1 0 0 1] S2=[0 1 0 1];
elseif k==[1 0 1 0] S2=[1 0 0 1];
elseif k==[1 0 1 1] S2=[0 0 1 1];
elseif k==[1 1 0 0] S2=[0 0 1 0];
elseif k==[1 1 0 1] S2=[0 1 0 0];
elseif k==[1 1 1 0] S2=[1 0 0 0];
else S2=[1 0 1 0];
end