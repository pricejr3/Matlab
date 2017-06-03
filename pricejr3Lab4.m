% Question 1


homographicImage = imread('homographic_dark.jpg');
homographic2Gray = rgb2gray(homographicImage);
homographicDouble = im2double(homographic2Gray);


filteredImage1 = homfilt(homographicDouble, 10, 2, .5, 2)/16;
filteredImage2 = homfilt(homographicDouble, 5, 2, .5, 3)/16;
filteredImage3 = homfilt(homographicDouble, 4, 3, .2, 16)/16;



figure(1), imshow(filteredImage1);

figure(2),subplot(221),subimage(homographicDouble),title('Original Image'),subplot(222),
subimage(filteredImage1),title('Filtered Image W/ Diff params'),subplot(223),subimage(filteredImage2),
title('Filtered again with different params'),subplot(224),subimage(filteredImage3),title('Filtered Image again with different params');


% Question 2

birds = imread('flying birds.jpg');
birds1 = rgb2gray(birds);
birds2 = im2double(birds1);

paperclips = imread('paper clips.jpg');
paperclips1 = rgb2gray(paperclips);
paperclips2 = im2double(paperclips1);


thresholedBird = birds2 < .2;

figure(3), imshow(thresholedBird);

thresholedClips = paperclips2 < .67;

figure(4), imshow(thresholedClips);


figure(5),subplot(221),subimage(birds2),title('Original Bird Image'),subplot(222),
subimage(thresholedBird),title('Thresholed Bird'),subplot(223),subimage(paperclips2),
title('Original Paper Clips Image'),subplot(224),subimage(thresholedClips),title('Thresholded Paper Clips');


% Question 3

RGB1 = imread('rice.jpg');
RGB2 = imread('cameraman.png');

image1 = rgb2gray(RGB1);
image2 = RGB2;

image1double = im2double(image1);
image2double = im2double(image2);


image1doubleFixed = imresize(image1double,[256 256]);

image1double = image1doubleFixed;


% had to resize images for display
m = imlincomb(0.5, image1double, .5, image2double);

thresholedRice = imlincomb(0.0, m, 1.0, image1double);


figure(6), imshow(m);

figure(7),subplot(221),subimage(image1double),title('Original Image 1'),subplot(222),
subimage(image2double),title('Original Image 2'),subplot(223),subimage(m),
title('Thresholed image'), subplot(224), subimage(thresholedRice), title('Thresholded Rice');





% Question 4
RGB2 = imread('cameraman.png');
image2 = RGB2;
image2double = im2double(image2);


%
roberts = edge(image2double, 'roberts');
%
prewitt = edge(image2double, 'prewitt');
%
sobel = edge(image2double, 'sobel');
lap2 = fspecial('laplacian', 0);
%
laplacian = imfilter(image2double, lap2);




% zerocrossing
filterLap = fspecial('laplacian', 0);
zeroCrossing = edge(image2double, 'zerocross', [], filterLap);




% Marr-Hildreth
log = fspecial('log', 13, 2);
marrHildreth = edge(image2double, 'zerocross', [], log);


% Canny
canny = edge(image2double, 'canny');


% Display first 4 images
figure(8),subplot(221),subimage(image2double),title('Orig Image'),subplot(222),
subimage(roberts),title('Roberts'),subplot(223),subimage(prewitt),
title('Prewitt'),subplot(224),subimage(sobel),title('sobel');

%Display next 4 images
figure(9),subplot(221),subimage(laplacian),title('Laplacian'),subplot(222),
subimage(zeroCrossing),title('Zero-Crossing'),subplot(223),subimage(marrHildreth),
title('Marr-Hildreth'),subplot(224),subimage(canny),title('Canny');







% Question 5


pearson = imread('pearsonhall.jpg');
pearson1 = rgb2gray(pearson);
pearson2 = im2double(pearson1);


% Salt and pepper noise
c1 = imnoise(pearson2,'salt & pepper',0.04);


% Gaussian noise
c2  = imnoise(pearson2,'gaussian',0.15);



%
roberts = edge(c1, 'roberts');
%
prewitt = edge(c1, 'prewitt');
%
sobel = edge(c1, 'sobel');
lap2 = fspecial('laplacian', 0);
%
laplacian = imfilter(c1, lap2);




% zerocrossing
filterLap = fspecial('laplacian', 0);
zeroCrossing = edge(c1, 'zerocross', [], filterLap);




% Marr-Hildreth
log = fspecial('log', 13, 2);
marrHildreth = edge(c1, 'zerocross', [], log);


% Canny
canny = edge(c1, 'canny');


% Display first 4 images
figure(10),subplot(221),subimage(c1),title('Orig Image-C1'),subplot(222),
subimage(roberts),title('Roberts-C1'),subplot(223),subimage(prewitt),
title('Prewitt-C1'),subplot(224),subimage(sobel),title('sobel-C1');

%Display next 4 images
figure(11),subplot(221),subimage(laplacian),title('Laplacian-C1'),subplot(222),
subimage(zeroCrossing),title('Zero-Crossing-C1'),subplot(223),subimage(marrHildreth),
title('Marr-Hildreth-C1'),subplot(224),subimage(canny),title('Canny-C1');




%
roberts = edge(c2, 'roberts');
%
prewitt = edge(c2, 'prewitt');
%
sobel = edge(c2, 'sobel');
lap2 = fspecial('laplacian', 0);
%
laplacian = imfilter(c2, lap2);




% zerocrossing
filterLap = fspecial('laplacian', 0);
zeroCrossing = edge(c2, 'zerocross', [], filterLap);




% Marr-Hildreth
log = fspecial('log', 13, 2);
marrHildreth = edge(c2, 'zerocross', [], log);


% Canny
canny = edge(c2, 'canny');


% Display first 4 images
figure(12),subplot(221),subimage(c2),title('Orig Image-C2'),subplot(222),
subimage(roberts),title('Roberts-C2'),subplot(223),subimage(prewitt),
title('Prewitt-C2'),subplot(224),subimage(sobel),title('sobel-C2');

%Display next 4 images
figure(13),subplot(221),subimage(laplacian),title('Laplacian-C2'),subplot(222),
subimage(zeroCrossing),title('Zero-Crossing-C2'),subplot(223),subimage(marrHildreth),
title('Marr-Hildreth-C2'),subplot(224),subimage(canny),title('Canny-C2');




