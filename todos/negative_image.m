A = double(rgb2gray(imread('Hassan.JPG')));
[R, C] = size(A);
B = zeros(R,C);
for i = 1:1:R
    for j = 1:1:C
        B(i,j) = 255 - A(i,j);
    end
end
B = B / 255;
imshow(B);