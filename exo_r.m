function xO_r=xo_r(image,sequance)
[a,b]=size(image);
for i=1:a*b
    f(i)=sequance(i+2);
end
B=uint8(reshape(f,a,b));
xO_r=bitxor(image,B);