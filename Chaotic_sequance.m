function seqnace=Chaotic_sequance(theta)
n=40;
p=80;
q=180;
z1 = 2.23; z2 = 2.56; z3 = 2.567; z4=2.654; z5=2.543; z6=2.986; z7=2.999; z8=2.543; z9=2.56879;
x(1)  = sin(theta*pi*(z1^2))^2;
y(1) = sin(theta*pi*(z2))^2;
z(1) = sin(theta*pi*(z3))^2;
a(1)  = sin(theta*pi*(z4))^2;
b(1) = sin(theta*pi*(z5))^2;
c(1) = sin(theta*pi*(z6))^2;
d(1)  = sin(theta*pi*(z7))^2;
e(1) = sin(theta*pi*(z8))^2;
f(1) = sin(theta*pi*(z9))^2;

for ii = 2:1:800000
    x(ii) = sin(z1*asin(sqrt(x(ii-1))))^2;
   y(ii) = sin(z2*asin(sqrt(y(ii-1))))^2;
   z(ii) = sin(z3*asin(sqrt(z(ii-1))))^2;
   a(ii) = sin(z4*asin(sqrt(a(ii-1))))^2;
   b(ii) = sin(z5*asin(sqrt(b(ii-1))))^2;
   c(ii) = sin(z6*asin(sqrt(c(ii-1))))^2;
    d(ii) = sin(z7*asin(sqrt(d(ii-1))))^2;
   e(ii) = sin(z8*asin(sqrt(e(ii-1))))^2;
   f(ii) = sin(z9*asin(sqrt(f(ii-1))))^2;
end
x=ceil(mod((x*1000000000000000),256));
 y=ceil(mod((y*100000000000000),256));
 z=ceil(mod((z*100000000000000),256));
 a=ceil(mod((a*1000000000000000),256));
 b=ceil(mod((b*100000000000000),256));
 c=ceil(mod((c*100000000000000),256));
 d=ceil(mod((d*1000000000000000),256));
 e=ceil(mod((e*100000000000000),256));
 f=ceil(mod((f*100000000000000),256));
 seqnace=x;
 