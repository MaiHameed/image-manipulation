maxImg      = max(max(img_g));
minImg      = min(min(img_g));
meanImg     = mean(mean(img_g));
stdImg      = std(std(double(img_g)));

disp("The max pixel value is: " + maxImg);
disp("The min pixel value is: " + minImg);
disp("The mean is: " + meanImg);
disp("The standard deviation is: " + stdImg);
disp("The values were obtained by using the max(), min(), and");
disp("std() MATLAB functions. The image data type needed to be");
disp("typecasted into a double for use in the std() function.");

B = ((img_g-meanImg)*10/stdImg)+meanImg;
figure;
imshow(B);
title("4(b)");

shiftLength = 2;
C = zeros(size(img_g));
C(:,1:512-shiftLength) = double(img_g(:,1+shiftLength:512));
figure;
imshow(uint8(C));
title("4(c)");

D = img_g - uint8(C);
figure;
imshow(D);
title("4(d)");

E = flip(img_g,2);
figure;
imshow(E);
title("4(e)");

F = 255 - img_g;
figure;
imshow(F);
title("4(f)");
