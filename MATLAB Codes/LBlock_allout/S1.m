function [ S1 ] = S1( k )
if k==[0 0 0 0] S1=[0 1 0 0];
elseif k==[0 0 0 1] S1=[1 0 1 1];
elseif k==[0 0 1 0] S1=[1 1 1 0];
elseif k==[0 0 1 1] S1=[1 0 0 1];
elseif k==[0 1 0 0] S1=[1 1 1 1];
elseif k==[0 1 0 1] S1=[1 1 0 1];
elseif k==[0 1 1 0] S1=[0 0 0 0];
elseif k==[0 1 1 1] S1=[1 0 1 0];
elseif k==[1 0 0 0] S1=[0 1 1 1];
elseif k==[1 0 0 1] S1=[1 1 0 0];
elseif k==[1 0 1 0] S1=[0 1 0 1];
elseif k==[1 0 1 1] S1=[0 1 1 0];
elseif k==[1 1 0 0] S1=[0 0 1 0];
elseif k==[1 1 0 1] S1=[1 0 0 0];
elseif k==[1 1 1 0] S1=[0 0 0 1];
else S1=[0 0 1 1];
end