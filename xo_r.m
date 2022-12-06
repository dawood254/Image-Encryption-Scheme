function xO_r=xo_r(image,sequance)
[a,b]=size(image);
for i=1:a*b
    f(i)=sequance(i);
end
A=uint8(mod(f,16));
B=reshape(A,a,b);
xO_r=bitxor(image,B);