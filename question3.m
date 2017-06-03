
% Question 3 

% a.) The negative.
breastPicture = imread('breast.tif')
naiveComplement = imcomplement(breastPicture);

% enhancing image using variable gamma.

%low in high in
%low out high out
enhance1 = imadjust(breastPicture, [0.10 .83], [0 1]);


%low in high in
%high out low out
enhance2 = imadjust(breastPicture, [0.10 .83], [.8 0]);

enhance3 = imadjust(breastPicture, [0 1], [0 1]);

% Display images.
imshow(breastPicture), title(breastPicture);
title('Original Image'); figure,
imshow(naiveComplement),title('Negative Image'); 
figure, imshow(enhance1); 
title('Enhanced image using variable Gamma low/high in low/high out');
figure, imshow(enhance2); 
title('Enhanced image using variable Gamma low/high in high/low out');
figure, imshow(enhance3); 
title('Enhanced image using variable Gamma 0/1 in. 1/0 out');
