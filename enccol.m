function colpermut=num(sh_row,y,p)
[row,col]=size(sh_row);
for j1=1:1:col
    l(j1)=y(j1+p);
end
for j=1:1:col
    for i=1:1:row
        if(mod(l(j),2)==0)
           if((i-l(j))>=1)          %shift up of column
                sh_col(i-l(j),j)=sh_row(i,j);
                col_shift_even(i,j)=i-l(j);
            else
                sh_col((row+i-l(j)),j)=sh_row(i,j);
                col_shift_even(i,j)=row+i-l(j);
            end
        else
           if((i+l(j))<=row)           %shift down of column
               sh_col(i+l(j),j)=sh_row(i,j);
               col_shift_odd(i,j)=i+l(j);
               else
               sh_col((i+l(j)-row),j)=sh_row(i,j); 
               col_shift_odd(i,j)=(i+l(j)-row);
            end
        end
    end
end
colpermut=sh_col;