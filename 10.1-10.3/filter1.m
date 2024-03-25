a = [0 0 0 1 0 0 0];
f = [1 2 3 4 5];
imshow(a);
g = imfilter(a,f,'same','corr');
imshow(g);
