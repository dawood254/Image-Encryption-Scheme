%....................Shuffling.......................
disp('........................Started Shuffling.....................')
%Tinkerbell shuffling
num=10000;
m=677;
n=m;
a=0.3;b=0.6000;c=2.0;d=0.27;
for k= 1:num
for i=1:m
  for j=1:n
    r = mod([round(abs((i^2)-(j^2)+(a*i)+(b*j))),round(abs((2*i*j)+(c*i)+(d*j)))], [m,n]);
%     r = mod([(i+j),(j+K*sin(((i+1)*n)/2*pi))],mo);
%     r = [((i-1)+(K*sin(j-1))),((j-1)+i)];
%     r = uint8(r);
    ggg(i,j)=g(r(1)+1,r(2)+1);
%       ggg(i,j)=g(r(1),r(2));
    end
end
  g=ggg;
end
 subplot(232)
 x=ggg;
 imshow(ggg,[]);
 title('Tinkerbell shuffled')