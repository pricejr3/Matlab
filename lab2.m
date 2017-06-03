% Question 1
A=imread('caribou.jpg');

B=bitget(A,1);
figure,
subplot(4,2,1);imshow(logical(B));title('Bit plane 1');

B=bitget(A,2);
subplot(4,2,2);imshow(logical(B));title('Bit plane 2');

B=bitget(A,3);
subplot(4,2,3);imshow(logical(B));title('Bit plane 3');

B=bitget(A,4);
subplot(4,2,4);imshow(logical(B));title('Bit plane 4');


B=bitget(A,5);
subplot(4,2,5);imshow(logical(B));title('Bit plane 5');

B=bitget(A,6);
subplot(4,2,6);imshow(logical(B));title('Bit plane 6');

B=bitget(A,7);
subplot(4,2,7);imshow(logical(B));title('Bit plane 7');

B=bitget(A,8);
subplot(4,2,8);imshow(logical(B));title('Bit plane 8');



% Adding bit 1 to bit 8
B=zeros(size(A));
B=bitset(B,1,bitget(A,1));
B=bitset(B,8,bitget(A,8));
B=uint8(B);
figure,imshow(B);

% Miami university bit adding.
miami = imread('Miami.jpg');
B2=zeros(size(miami));
B2=bitset(B2,7,bitget(miami,7));
B2=bitset(B2,6,bitget(miami,6));
B2=uint8(B2);
figure,imshow(B2);


% Question 2
imfinfo('cameraman.tif')
cameraman = imread('cameraman.tif');
cameraman2 = imresize(cameraman, [16 16]);
figure,imshow(cameraman2); title('variable resolutions');
cameraman3 = imresize(cameraman2, [256 256]);
figure, imshow(cameraman3); title('Back to normal 256 * 256');

imfinfo('rose.tif')
rose = imread('rose.tif');
rose2 = imresize(rose, [32 32]);
figure,imshow(rose2); title('variable resolutions');
rose3 = imresize(rose2, [1024 1024]);
figure, imshow(rose3); title('Back to normal 1024 * 1024');

imfinfo('baby.bmp')
baby = imread('baby.bmp');
baby2 = imresize(baby, [16 16]);
figure,imshow(baby2); title('variable resolutions');
baby3 = imresize(baby2, [384 389]);
figure, imshow(baby3); title('Back to normal 384 * 389');


% Question 3 
blurryMoon = imread('blurrymoon.tif');
bilinear = imrotate(blurryMoon,45,'bilinear');
imshow(blurryMoon);
figure, imshow(bilinear);
bilinear = imrotate(blurryMoon,90,'bilinear');
imshow(blurryMoon);
figure, imshow(bilinear);
bilinear = imrotate(blurryMoon,180,'bilinear');
imshow(blurryMoon);
figure, imshow(bilinear);
bilinear = imrotate(blurryMoon,360,'bilinear');
imshow(blurryMoon);
figure, imshow(bilinear);

blurryMoon = imread('blurrymoon.tif');
bilinear = imrotate(blurryMoon,45,'nearest');
imshow(blurryMoon);
figure, imshow(bilinear);
bilinear = imrotate(blurryMoon,90,'nearest');
imshow(blurryMoon);
figure, imshow(bilinear);
bilinear = imrotate(blurryMoon,180,'nearest');
imshow(blurryMoon);
figure, imshow(bilinear);
bilinear = imrotate(blurryMoon,360,'nearest');
imshow(blurryMoon);
figure, imshow(bilinear);

blurryMoon = imread('blurrymoon.tif');
bilinear = imrotate(blurryMoon,45,'bicubic');
imshow(blurryMoon);
figure, imshow(bilinear);
bilinear = imrotate(blurryMoon,90,'bicubic');
imshow(blurryMoon);
figure, imshow(bilinear);
bilinear = imrotate(blurryMoon,180,'bicubic');
imshow(blurryMoon);
figure, imshow(bilinear);
bilinear = imrotate(blurryMoon,360,'bicubic');
imshow(blurryMoon);
figure, imshow(bilinear);


moon = imread('blurrymoon.tif');
moon2 = imrotate(moon, 90);
moon3 = fliplr(moon2);
figure, imshow(moon3); title('Rotated 90 degrees and flipped!');

% Question 4 - Laplacian enhance
moonAgain=imread('blurrymoon.tif');

doubledMoon=im2double(moonAgain);

matrices=[0 1 0; 1 -4 1; 0 1 0];
laplacian22=imfilter(doubledMoon,matrices,'replicate');
figure(2);imshow(laplacian22,[]);

moonImage = imread('blurrymoon.tif');
filter = fspecial('laplacian');
image2 = imfilter(moonImage,filter);
figure, imshow(image2);title('Laplacian enchanced');





% Question 5 - 15  x 15 average filter.
hubble = imread('hubble.tif');
figure(1);imshow(hubble);
avgFilter = fspecial('average', [15 15]);
averagedIMage = imfilter(hubble,avgFilter,'replicate');
figure(2);imshow(averagedIMage,[]);
