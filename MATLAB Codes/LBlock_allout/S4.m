function [ S4 ] = S4( k )
if k==[0 0 0 0] S4=[1 1 1 0];
elseif k==[0 0 0 1] S4=[0 1 0 1];
elseif k==[0 0 1 0] S4=[1 1 1 1];
elseif k==[0 0 1 1] S4=[0 0 0 0];
elseif k==[0 1 0 0] S4=[0 1 1 1];
elseif k==[0 1 0 1] S4=[0 0 1 0];
elseif k==[0 1 1 0] S4=[1 1 0 0];
elseif k==[0 1 1 1] S4=[1 1 0 1];
elseif k==[1 0 0 0] S4=[0 0 0 1];
elseif k==[1 0 0 1] S4=[1 0 0 0];
elseif k==[1 0 1 0] S4=[0 1 0 0];
elseif k==[1 0 1 1] S4=[1 0 0 1];
elseif k==[1 1 0 0] S4=[1 0 1 1];
elseif k==[1 1 0 1] S4=[1 0 1 0];
elseif k==[1 1 1 0] S4=[0 1 1 0];
else S4=[0 0 1 1];
end