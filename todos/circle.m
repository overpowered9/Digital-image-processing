% Define the radius and center coordinates
radius = 5;
center_x = 0;
center_y = 0;

% Define the size of the image
image_size = 2 * radius + 1; % Ensures the circle fits entirely in the image

% Initialize the image
circle_image = zeros(image_size);

% Iterate through each pixel in the image
for i = 1:image_size
    for j = 1:image_size
        % Calculate the distance from the center
        distance = sqrt((i - radius - 1)^2 + (j - radius - 1)^2);
        % Check if the distance is approximately equal to the radius
        if abs(distance - radius) < 0.5
            % Mark the pixel as part of the circle
            circle_image(i, j) = 1;
        end
    end
end

% Display the circle image
imshow(circle_image);
title('Circle without using any library');
