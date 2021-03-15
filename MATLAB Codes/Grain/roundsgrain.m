function out = roundsgrain(iv,key,num_rounds)

b=key;
s=[iv ones(1,16)];

for i=1:160
f=mod(s(1)+s(14)+s(24)+s(39)+s(52)+s(63),2);
g=mod(s(1)+b(63)+b(61)+b(53)+b(46)+b(38)+b(34)+b(29)+b(22)+b(15)+b(10)+b(1)+b(64)*b(61)+b(38)*b(34)+b(16)*b(10)+b(61)*b(53)*b(46)+b(34)*b(29)*b(22)+b(64)*b(46)*b(29)*b(10)+b(61)*b(53)*b(38)*b(34)+b(64)*b(61)*b(22)*b(16)+b(64)*b(61)*b(53)*b(46)*b(38)+b(34)*b(29)*b(22)*b(16)*b(10)+b(53)*b(46)*b(38)*b(34)*b(29)*b(22),2);
h=mod(s(26)+b(64)+s(4)*s(65)+s(47)*s(65)+s(65)*b(64)+s(4)*s(26)*s(47)+s(4)*s(47)*s(65)+s(4)*s(47)*b(64)+s(26)*s(47)*b(64)+s(47)*s(65)*b(64),2);
z=mod(b(2)+b(3)+b(5)+b(11)+b(32)+b(44)+b(57)+h,2);
s=[s(2:80) xor(f,z)];
b=[b(2:80) xor(g,z)];
end
for j=1:num_rounds
f=mod(s(1)+s(14)+s(24)+s(39)+s(52)+s(63),2);
g=mod(s(1)+b(63)+b(61)+b(53)+b(46)+b(38)+b(34)+b(29)+b(22)+b(15)+b(10)+b(1)+b(64)*b(61)+b(38)*b(34)+b(16)*b(10)+b(61)*b(53)*b(46)+b(34)*b(29)*b(22)+b(64)*b(46)*b(29)*b(10)+b(61)*b(53)*b(38)*b(34)+b(64)*b(61)*b(22)*b(16)+b(64)*b(61)*b(53)*b(46)*b(38)+b(34)*b(29)*b(22)*b(16)*b(10)+b(53)*b(46)*b(38)*b(34)*b(29)*b(22),2);
h=mod(s(26)+b(64)+s(4)*s(65)+s(47)*s(65)+s(65)*b(64)+s(4)*s(26)*s(47)+s(4)*s(47)*s(65)+s(4)*s(47)*b(64)+s(26)*s(47)*b(64)+s(47)*s(65)*b(64),2);
z=mod(b(2)+b(3)+b(5)+b(11)+b(32)+b(44)+b(57)+h,2);
s=[s(2:80) f];
b=[b(2:80) g];
end
out=z;
