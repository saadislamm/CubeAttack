function [ S6 ] = S6( k )
if k==[0 0 0 0] S6=[1 0 1 1];
elseif k==[0 0 0 1] S6=[1 0 0 1];
elseif k==[0 0 1 0] S6=[0 1 0 0];
elseif k==[0 0 1 1] S6=[1 1 1 0];
elseif k==[0 1 0 0] S6=[0 0 0 0];
elseif k==[0 1 0 1] S6=[1 1 1 1];
elseif k==[0 1 1 0] S6=[1 0 1 0];
elseif k==[0 1 1 1] S6=[1 1 0 1];
elseif k==[1 0 0 0] S6=[0 1 1 0];
elseif k==[1 0 0 1] S6=[1 1 0 0];
elseif k==[1 0 1 0] S6=[0 1 0 1];
elseif k==[1 0 1 1] S6=[0 1 1 1];
elseif k==[1 1 0 0] S6=[0 0 1 1];
elseif k==[1 1 0 1] S6=[1 0 0 0];
elseif k==[1 1 1 0] S6=[0 0 0 1];
else S6=[0 0 1 0];
end