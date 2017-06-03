
% Question 4
saltImage = imread('saltandpepper.tif');
filteredSaltMedian=medfilt2(saltImage,[6 6]);
filteredSaltAverage = fspecial('average', 5);
averageSalt = imfilter(saltImage, filteredSaltAverage);


monaLisa = rgb2gray(imread('monalisa.png'));
filteredMonaLisaMedian=medfilt2(monaLisa,[9 9]);
filteredMonaLisaAverage = fspecial('average', 10);
averageMonaLisa = imfilter(monaLisa, filteredMonaLisaAverage);


imshow(saltImage), title('Original Salt and Pepper Image');
figure,
imshow(filteredSaltMedian),title('Filtered Salt Using Median Filter'); 
figure,
imshow(monaLisa), title('Original Mona Lisa Image');
figure,
imshow(filteredMonaLisaMedian),title('Filtered Mona Lisa Using Median Filter'); 
figure,
%

imshow(averageSalt),title('Filtered Salt Using AVERAGE'); 
figure,
imshow(averageMonaLisa),title('Filtered Mona Lisa Using AVERAGE'); 



