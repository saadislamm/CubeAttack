function out = rounds(iv,key,num_rounds)

s = [key, zeros(1,13), iv, zeros(1,112), ones(1,3)];

for i = 1:576

t1=mod(s(171)+s(66)+s(93)+s(91)*s(92),2);
t2=mod(s(264)+s(162)+s(177)+s(175)*s(176),2);
t3=mod(s(69)+s(243)+s(288)+s(286)*s(287),2);

s = [t3, s(1:92), t1, s(94:176), t2, s(178:287)];
end

for j = 577:num_rounds

t1=mod(s(66)+s(93),2);
t2=mod(s(162)+s(177),2);
t3=mod(s(243)+s(288),2);
z=mod(t1+t2+t3,2);

t1=mod(s(171)+t1+s(91)*s(92),2);
t2=mod(s(264)+t2+s(175)*s(176),2);
t3=mod(s(69)+t3+s(286)*s(287),2);

s = [t3, s(1:92), t1, s(94:176), t2, s(178:287)];
end
out=z;