 x= [140 108 94;89 99 125;121 134 221];
y = [-1 0 1;-2 0 2;-1 0 1];
z = imfilter(x,y,'corr');
imshow(x);
print(z(2,2));