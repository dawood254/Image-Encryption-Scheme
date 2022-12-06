
function s_box=find_s_box (a,b,c,d,mod_poly)
% global sboxbin;
for i=0:15
   sett(1,i+1)=i; 
end
sett=reshape(sett,4,4);
sett=sett';
% mod_poly = bin2dec ('110001101');

for i = 0:15
    f(i+1) = bitxor(poly_mult(a, i ,mod_poly),b);
    g(i+1) = bitxor(poly_mult(c, i ,mod_poly),d);
    if f(i+1)==g(i+1)
        k(i+1)=1;
    else if g(i+1)==0
            k(i+1)= 1000;
        else
        k(i+1) = poly_mult(f(i+1), find_inverse(g(i+1),mod_poly), mod_poly);
        end
    end
end
box = reshape(k,4,4);
sbox=box';
%duplicate and missing replacement
%command show location of discontinuity
for i=0:15
    if bitxor(poly_mult(c, i ,mod_poly),d)==0
        disc_loc=i%discontinuity location
    end
end
value_disc=sett(find(~ismember(sett,box)))%discontinuos value
sbox(find(~ismember(sbox,sett)))=sett(find(~ismember(sett,sbox)));
s_box=sbox;
