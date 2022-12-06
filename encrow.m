function permut=num(rgb,x,n)
[row,col]=size(rgb);
for j=1:1:row
    k(j)=x(j+n);
   end
for i=1:1:row
    for j=1:1:col
        if(mod(k(i),2)==0)
            if((j+k(i))<=col)   %shift right of row
               sh_row(i,j+k(i))=rgb(i,j);
               row_shift_even(i,j)=j+k(i);
            else
               sh_row(i,(j+k(i)-col))=rgb(i,j); 
               row_shift_even(i,j)=(j+k(i)-col);
            end
        else
            if((j-k(i))>=1)       %shift left of row
                sh_row(i,j-k(i))=rgb(i,j);
                row_shift_odd(i,j)=j-k(i);
            else
                sh_row(i,(col+(j-k(i))))=rgb(i,j);
                row_shift_odd(i,j)=col+j-k(i);
            end
        end
    end
end
permut=sh_row;