A=zeros(1000,1000);
cx=500;
cy=500;
rad=100;
for i= 1:500
    for j=1:500 
    if abs(cx-i)+abs(cy-j)<=rad
    A(i,j)=1;
    end
    end
end
imshow(A);