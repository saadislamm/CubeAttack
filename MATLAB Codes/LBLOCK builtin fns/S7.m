function [ S7 ] = S7( k )
if k==[0 0 0 0] S7=[1 1 0 1];
elseif k==[0 0 0 1] S7=[1 0 1 0];
elseif k==[0 0 1 0] S7=[1 1 1 1];
elseif k==[0 0 1 1] S7=[0 0 0 0];
elseif k==[0 1 0 0] S7=[1 1 1 0];
elseif k==[0 1 0 1] S7=[0 1 0 0];
elseif k==[0 1 1 0] S7=[1 0 0 1];
elseif k==[0 1 1 1] S7=[1 0 1 1];
elseif k==[1 0 0 0] S7=[0 0 1 0];
elseif k==[1 0 0 1] S7=[0 0 0 1];
elseif k==[1 0 1 0] S7=[1 0 0 0];
elseif k==[1 0 1 1] S7=[0 0 1 1];
elseif k==[1 1 0 0] S7=[0 1 1 1];
elseif k==[1 1 0 1] S7=[0 1 0 1];
elseif k==[1 1 1 0] S7=[1 1 0 0];
else S7=[0 1 1 0];
end