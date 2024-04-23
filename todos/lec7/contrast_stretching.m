A= double(rgb2gray(imread("assets\a.png")));
rmin=min(min(A));
rmax=max(max(A));
[R,C]=size(A);
B=zeros(R,C);
for i=1:R
    for j=1:C
B(i,j)=255*((A(i,j)-rmin)/(rmax-rmin));
    end
end
C=255*((A-rmin)/(rmax-rmin));
imshow(uint8(B));
imshow(uint8(C));