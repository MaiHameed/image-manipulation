img2Gray    = rgb2gray(img2);

combinedImage = img2Gray;
% Image size is 512x512px, centre 100px is from 207-306
combinedImage(207:306,207:306,:) = imgGray(207:306,207:306,:); 
figure;
imshow(combinedImage);
title("Pixel Replacement");