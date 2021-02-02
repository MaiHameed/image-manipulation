A_r = rescale(img_r);
A_g = rescale(img_g);
A_b = rescale(img_b);

meanVal = 0;
stdVal = 0.02;

A_r = imnoise(A_r,'gaussian',meanVal,stdVal);
A_g = imnoise(A_g,'gaussian',meanVal,stdVal);
A_b = imnoise(A_b,'gaussian',meanVal,stdVal);

A = cat(3,A_r,A_g,A_b);

figure;
subplot(2,3,1);
imshow(A_r);
title("Gaussian Noise on Red Channel");

subplot(2,3,2);
imshow(A_g);
title("Gaussian Noise on Green Channel");

subplot(2,3,3);
imshow(A_b);
title("Gaussian Noise on Blue Channel");

subplot(2,3,5);
imshow(A);
title("Combined Noise Channels");

disp("I used a standard deviation value of "+stdVal+" for a tasteful addition");
disp("of noise");
