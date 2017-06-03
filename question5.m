% Question 5 - Fourier Transform
img = imread('fouriertransform.tif');
g = im2uint8(mat2gray(log(1 + double(img))));

imshow(img), title('Original Image');
figure,
imshow(g),title('Log Transformed Image'); 