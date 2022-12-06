%% The Henon Map
% Created by Moysis Lazaros.
%
% This is a simple implementation of the Henon
% system. It is a discrete time system that maps a point $(x_n,y_n)$ in the
% following fashion:
%
% $x_{n+1}=1-a x_n^2 + y_n$
%
% $y_{n+1}=b x_n$
%
% where a and b are the system parameters
%% The code
% We start by defining the initial values
clc;
clear;
x(1)=-0.72;
y(1)=-0.64;
a=0.9;
b=-0.6013;
c=2.0;
d=0.50;
a1=0.9000001;
b1=-0.6014;
c1=2.000001;
d1=0.50;
% and now we begin the iteration (10000 iterations):
for i=2:50000
    x(i)=x(i-1)^2-y(i-1)^2+a*x(i-1)+b*y(i-1);
    y(i)=2*x(i-1)*y(i-1)+c*x(i-1)+d*y(i-1);
end
% for i=1:50000
%     x(i)=x(i)^2-y(i)^2+a1*x(i)+b1*y(i);
%     y(i)=2*x(i)*y(i)+c1*x(i)+d1*y(i);
% end
plot(x,y,'.','MarkerSize',4)
title('Tinkerbell map')
%% References
% [1] M. Henon (1976). "A two-dimensional mapping with a strange
% attractor". Communications in Mathematical Physics 50 (1): 69–77