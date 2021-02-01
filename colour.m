[img_r, img_g, img_b] = imsplit(img);
imgRBSwap = cat(3,img_b,img_g,img_r);
imgGray = rgb2gray(img);

subplot(2,2,1);
imshow(imgRBSwap);
title("Red and Blue Swapped");

subplot(2,2,2);
imshow(img_g);
title("Green Channel");

subplot(2,2,3);
imshow(img_r);
title("Red Channel");

subplot(2,2,4);
imshow(imgGray);
title("Grayscale Image");