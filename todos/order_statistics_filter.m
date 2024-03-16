function outputImage = order_statistics_filter(inputImage, filterKernel)
    [rows, cols] = size(inputImage);
    [kRows, kCols] = size(filterKernel);
    halfKernelRows = floor(kRows / 2);
    halfKernelCols = floor(kCols / 2);
    
    % Apply convolution
    outputImage = zeros(rows, cols);
    for i = halfKernelRows+1:rows-halfKernelRows
        for j = halfKernelCols+1:cols-halfKernelCols
            % Extract the neighborhood
            neighborhood = inputImage(i-halfKernelRows:i+halfKernelRows, j-halfKernelCols:j+halfKernelCols);
            
            neighborhood = double(neighborhood);
            filterKernel = double(filterKernel);
            
            % Apply convolution
            outputImage(i, j) = median((neighborhood .* filterKernel), 'all');
        end
    end
end