% Question 1

c = rgb2gray(imread('chickens.bmp'));

image = c;
imageDivided = c/4;

% Equalize the image that was divided by four.
equalizedImage = imdivide(imageDivided,4);
imshow(equalizedImage);
imshow(image),title('Original Image'), figure,
imshow(imageDivided),title('Image Divided by 4'), figure,
imhist(image),title('Original Image Histogram'), figure,
imhist(imageDivided),title('Image Divided by 4 Histogram'), 


figure, imhist(imageDivided);
ylim('auto')

equalizedHistogram = histeq(imageDivided, 256);
figure, imshow(equalizedHistogram),title('Equalized Image #1'),;
figure, imhist(equalizedHistogram),title('Equalized Histogram #1'),xlabel('Intensity'), ylabel('Occurrences');
ylim('auto')

% Equalize the histogram again
equalizedHistogram2 = histeq(equalizedHistogram, 256);
figure, imshow(equalizedHistogram2),title('Equalized Image #2');
figure, imhist(equalizedHistogram2),title('Equalized Histogram #2'),xlabel('Intensity'), ylabel('Occurrences'),;
ylim('auto')
