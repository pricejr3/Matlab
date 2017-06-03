% Reading the image and converting it to a gray-level image.
I=imread('rose.jpg');
I=rgb2gray(I);

% A 256 
[I256,map256]=gray2ind(I,256);

% A 128 
[I128,map128]=gray2ind(I,128);

% A 64
[I64,map64]=gray2ind(I,64);

% A 32 
[I32,map32]=gray2ind(I,32);

figure(1),subplot(221),subimage(I256,map256),title('I256'),subplot(222),
subimage(I128,map128),title('I128'),subplot(223),subimage(I64,map64),
title('I64'),subplot(224),subimage(I32,map32),title('I32');


% A 16 gray-level image:
[I16,map16]=gray2ind(I,16);

% A 8 gray-level image:
[I8,map8]=gray2ind(I,8);

% A 4 gray-level image:
[I4,map4]=gray2ind(I,4);

figure(2),subplot(221),subimage(I16,map16),title('I16'),subplot(222),
subimage(I8,map8),title('I8'),subplot(223),subimage(I4,map4),
title('I4');



% Question 2
I = imread('cameraman.tif');


c = [88 159 143 78];
r = [39 43  82 75];

%filters
averageFilter = fspecial('average', 5);
unsharpFilter = fspecial('unsharp');
gaussianFilter = fspecial('log');

BW = roipoly(I, c, r);


averaged = roifilt2(averageFilter,I,BW);
unsharp = roifilt2(unsharpFilter,I,BW);
gaussed = roifilt2(gaussianFilter,I,BW);


figure(3),subplot(221),subimage(averaged),title('AVERAGE'),subplot(222),
subimage(unsharp),title('UNSHARP'),subplot(223),subimage(gaussed),
title('LAPLACIAN');



% Question 3
I = imread('Miami.jpg');
J = imnoise(I,'salt & pepper',0.30);

figure(4),subplot(221),subimage(I),title('Original Picture'),subplot(222),
subimage(J),title('Salty 30%');


% Question 4
miami2 = imread('Miami.jpg');
gaussian = imnoise(miami2,'gaussian');
   
figure(5),subplot(221),subimage(miami2),title('Original Picture'),subplot(222),
subimage(gaussian),title('Gaussian');


% Question 5
saltPepper = imread('s&p.png');

averageFilter = fspecial('average', 5);
averagedFilteredImage = imfilter(saltPepper, averageFilter);

% median filter
medianFilter = medfilt2(saltPepper, [5,5]);

% Average filter + median filter
avgMedFilter = medianFilter + averagedFilteredImage;

figure(6),subplot(221),subimage(saltPepper),title('Original Picture'),subplot(222),
subimage(averagedFilteredImage),title('AverageFiltered')
,subplot(223),
subimage(medianFilter),title('Median Filtered'),subplot(224),
subimage(avgMedFilter),title('AVG + MEDIAN FILTER');






