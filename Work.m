 clc;
 clear;
X=imread('A.png');
%X=bitxor(X,1);
A=Encrypt(X(:,:,1));
B=Encrypt(X(:,:,2));
C=Encrypt(X(:,:,3));
image1=cat(3,A,B,C);
imshow(image1)
imwrite(image1,'encrypted 2 Lena.png')

