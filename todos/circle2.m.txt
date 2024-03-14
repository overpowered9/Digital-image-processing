center = [50, 50];
radius = 30;

image_size = [100, 100];
image = zeros(image_size);

for y=1:image_size(1)
    for x=1:image_size(2)
        distance = sqrt((x - center(1))^2 + (y - center(2))^2);

        if distance <= radius
            image(y, x) = 1;
        end
    end
end

imshow(image);