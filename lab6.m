% Question 1

img = imread('flower1.tif');
red = img(:,:,1);
green = img(:,:,2);
blue = img(:,:,3);
a = zeros(size(img, 1), size(img, 2));
just_red = cat(3, red, a, a);
just_green = cat(3, a, green, a);
just_blue = cat(3, a, a, blue);
final_rgb_image=cat(3,red, green, blue);

figure(1),subplot(2,3,1),subimage(img),title('Original Image'),subplot(2,3,2),
subimage(just_red),title('R component')
,subplot(2,3,3),
subimage(just_green),title('G component'),subplot(2,3,4),
subimage(just_blue),title('B component'),subplot(2,3,5),
subimage(final_rgb_image),title('Concatenated image');




% Question 2
f = imread('flower.tif');
[X1, map1]=rgb2ind(f,8,'nodither');


[X2, map2]=rgb2ind(f,8,'dither');


g=rgb2gray(f);
g1=dither(g);

figure(2),subplot(2,3,1),subimage(f),title('Original Image'),subplot(2,3,2),
subimage(X1,map1),title('No dither')
,subplot(2,3,3),
subimage(X2,map2),title('Dither'),subplot(2,3,4),
subimage(g),title('Greyscale Image'),subplot(2,3,5),
subimage(g1),title('With Dithering');



% Question 3
fC = imread('Fig0638(a)(lenna_RGB).tif');
fR=fC(:,:,1); fG=fC(:,:,2); fB=fC(:,:,3);

w = fspecial('average');
fR_filtered = imfilter (fR, w);
fG_filtered = imfilter(fG, w);
fB_filtered = imfilter(fB, w);


Fc_filtered = cat(3,fR_filtered,fG_filtered,fB_filtered); 

figure(3),subplot(1,2,1),subimage(fC),title('Original Image'),subplot(1,2,2),
subimage(Fc_filtered),title('Smoothed');


% Question 4
imageFour = imread('left_stream.tif');
c = [125 666 565 52];
r = [229 415 690 538];

%filters
averageFilter = fspecial('average', 15);


mask = roipoly(imageFour, c, r);

red = immultiply(mask, imageFour(:, :, 1));
green = immultiply(mask, imageFour(:, :, 2));
blue = immultiply(mask, imageFour(:, :, 3));

averageRed = roifilt2(averageFilter, red, mask);
averageGreen = roifilt2(averageFilter, green, mask);
averageBlue = roifilt2(averageFilter, blue, mask);

filteredArea = cat(3, averageRed, averageGreen, averageBlue);


figure(4),subplot(1,2,1),subimage(imageFour),title('Original Image'),subplot(1,2,2),
subimage(filteredArea),title('ROI Averaged');




% Question 5
fC2 = imread('Fig0650(a)(rgb_image_G_saltpep_pt05).tif');
fR2=fC2(:,:,1); fG2=fC2(:,:,2); fB2=fC2(:,:,3);

w2 = fspecial('average', 10);
fR_filtered2 = imfilter (fR2, w2);
fG_filtered2 = imfilter(fG2, w2);
fB_filtered2 = imfilter(fB2, w2);


Fc_filtered2 = cat(3,fR_filtered2,fG_filtered2,fB_filtered2); 

figure(5),subplot(1,2,1),subimage(fC2),title('Original Image'),subplot(1,2,2),
subimage(Fc_filtered2),title('Noise Clean');


