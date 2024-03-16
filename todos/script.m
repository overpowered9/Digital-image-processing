% Define the filter kernel (e.g., a 3x3 kernel)
kernelSize = 3;
%filterKernel = ones(kernelSize) / kernelSize^2;
%filterKernel = [1,1,1,1,1; 1,2,2,2,1; 1,2,4,2,1; 1,2,2,2,1; 1,1,1,1,1] / 25;
%filterKernel2 = [2,2,2; 2,4,2; 2,2,2;] / 9;
filterKernel2 = [-1  0  1; -2  0  2; -1  0  1];
filterKernel = [1,1,1; 1,1,1; 1,1,1];
% Load your input image
inputImage = double(rgb2gray(imread('image.jpg')));

% Call the function
%interImage = order_statistics_filter(inputImage, filterKernel);
interImage2 = convolution_filter(inputImage, filterKernel2);
outputImage = interImage2 + inputImage;

% Display the original and filtered images
figure;
subplot(1,2,1); imshow(uint8(inputImage)); title('Original Image');
subplot(1,2,2); imshow(uint8(outputImage)); title('Filtered Image');
