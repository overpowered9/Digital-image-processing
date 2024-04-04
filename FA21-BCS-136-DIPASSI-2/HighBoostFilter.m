function HighBoostFilter(filename, scaleFactor)
    % Read the image from the file and convert to grayscale
    inputImage = double(im2gray(imread(filename)));

    % Get the dimensions of the image
    [rows, cols] = size(inputImage);

    % Initialize matrix for the blurred image
    blurredImage = zeros(rows, cols);

    % Define the size of the kernel for blurring
    kernelSize = 3;

    % Calculate the offset for the kernel
    offset = floor(kernelSize / 2);

    % Create a kernel for blurring
    blurKernel = ones(kernelSize, kernelSize) / (kernelSize * kernelSize);

    % Apply the blur operation
    for i = offset + 1 : rows - offset
        for j = offset + 1 : cols - offset
            blurredImage(i, j) = sum(sum(inputImage(i-offset:i+offset, j-offset:j+offset) .* blurKernel));
        end
    end    

    % Detect edges by subtracting the blurred image from the original
    edges = inputImage - blurredImage;

    % Enhance the edges
    enhancedEdges = scaleFactor * edges;

    % Sharpen the image by adding the enhanced edges back to the original
    sharpenedImage = inputImage + enhancedEdges;

    % Displaying the images at each step
    imshow(uint8(inputImage));
    title('Original Image');

    figure;
    imshow(uint8(blurredImage));
    title('Blurred Image');

    figure;
    imshow(uint8(edges));
    title('Edges');

    figure;
    imshow(uint8(enhancedEdges));
    title('Enhanced Edges');

    figure;
    imshow(uint8(sharpenedImage));
    title('Sharpened Image');

    % Write the original image and the sharpened image to files
    imwrite(uint8(inputImage), 'original_image.jpeg');
    imwrite(uint8(sharpenedImage), 'highboost_masked_image.bmp');
end
