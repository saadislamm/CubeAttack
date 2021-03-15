function [ S9 ] = S9( k )
if k==[0 0 0 0] S9=[1 0 1 1];
elseif k==[0 0 0 1] S9=[0 1 0 1];
elseif k==[0 0 1 0] S9=[1 1 1 1];
elseif k==[0 0 1 1] S9=[0 0 0 0];
elseif k==[0 1 0 0] S9=[0 1 1 1];
elseif k==[0 1 0 1] S9=[0 0 1 0];
elseif k==[0 1 1 0] S9=[1 0 0 1];
elseif k==[0 1 1 1] S9=[1 1 0 1];
elseif k==[1 0 0 0] S9=[0 1 0 0];
elseif k==[1 0 0 1] S9=[1 0 0 0];
elseif k==[1 0 1 0] S9=[0 0 0 1];
elseif k==[1 0 1 1] S9=[1 1 0 0];
elseif k==[1 1 0 0] S9=[1 1 1 0];
elseif k==[1 1 0 1] S9=[1 0 1 0];
elseif k==[1 1 1 0] S9=[0 0 1 1];
else S9=[0 1 1 0];
end
