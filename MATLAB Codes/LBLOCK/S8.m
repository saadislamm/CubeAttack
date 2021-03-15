function [ S8 ] = S8( k )
if k==[0 0 0 0] S8=[1 0 0 0];
elseif k==[0 0 0 1] S8=[0 1 1 1];
elseif k==[0 0 1 0] S8=[1 1 1 0];
elseif k==[0 0 1 1] S8=[0 1 0 1];
elseif k==[0 1 0 0] S8=[1 1 1 1];
elseif k==[0 1 0 1] S8=[1 1 0 1];
elseif k==[0 1 1 0] S8=[0 0 0 0];
elseif k==[0 1 1 1] S8=[0 1 1 0];
elseif k==[1 0 0 0] S8=[1 0 1 1];
elseif k==[1 0 0 1] S8=[1 1 0 0];
elseif k==[1 0 1 0] S8=[1 0 0 1];
elseif k==[1 0 1 1] S8=[1 0 1 0];
elseif k==[1 1 0 0] S8=[0 0 1 0];
elseif k==[1 1 0 1] S8=[0 1 0 0];
elseif k==[1 1 1 0] S8=[0 0 0 1];
else S8=[0 0 1 1];
end
