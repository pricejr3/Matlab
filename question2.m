% Question 2
c = rgb2gray(imread('chickens.bmp'));

image = c;
imageDivided = c/4;

% For image - dark image.
imageOne = image - imageDivided;
imageTwo = imageOne - imageDivided;
imageThree = imageTwo - imageDivided;
imageFour = imageThree - imageDivided;

% For dark image - image.
imageOneOther = imageDivided - image;
imageTwoOther = imageOneOther - image;
imageThreeOther = imageTwoOther - image;
imageFourOther = imageThreeOther - image;


% Show the images
imshow(image),title('Image'), figure,
imshow(imageOne),title('Image - dark image 1x'), figure,
imshow(imageTwo),title('Image - dark image 2x'), figure,
imshow(imageThree),title('Image - dark image 3x'), figure,
imshow(imageFour),title('Image - dark image 4x'), figure,

imshow(imageDivided),title('DARK IMAGE'), figure,
imshow(imageOneOther),title('Dark image - IMAGE 1x'), figure,
imshow(imageTwoOther),title('Dark image - IMAGE 2x'), figure,
imshow(imageThreeOther),title('Dark image - IMAGE 3x'), figure,
imshow(imageFourOther),title('Dark image - IMAGE 4x');

