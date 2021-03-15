function [ S3 ] = S3( k )
if k==[0 0 0 0] S3=[0 1 1 1];
elseif k==[0 0 0 1] S3=[0 1 1 0];
elseif k==[0 0 1 0] S3=[1 0 0 0];
elseif k==[0 0 1 1] S3=[1 0 1 1];
elseif k==[0 1 0 0] S3=[0 0 0 0];
elseif k==[0 1 0 1] S3=[1 1 1 1];
elseif k==[0 1 1 0] S3=[0 0 1 1];
elseif k==[0 1 1 1] S3=[1 1 1 0];
elseif k==[1 0 0 0] S3=[1 0 0 1];
elseif k==[1 0 0 1] S3=[1 0 1 0];
elseif k==[1 0 1 0] S3=[1 1 0 0];
elseif k==[1 0 1 1] S3=[1 1 0 1];
elseif k==[1 1 0 0] S3=[0 1 0 1];
elseif k==[1 1 0 1] S3=[0 0 1 0];
elseif k==[1 1 1 0] S3=[0 1 0 0];
else S3=[0 0 0 1];
end