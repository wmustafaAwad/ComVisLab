%%BY WALEED MUSTAFA - Tues, 5/2/2019 - CIE 551 (Computer Vision) Course-
%%LWeek 02 - Excersice Two

face=imread('face.jpg');
%% Downsample and Gaussian:
first_filter=imgaussfilt3(face);
downed_face=first_filter(1:2:end,1:2:end,:);


second_filter=imgaussfilt3(downed_face);
downed_face_copied=second_filter(1:2:end,1:2:end,:);


third_filter=imgaussfilt3(downed_face_copied);
downed_face_copied=third_filter(1:2:end,1:2:end,:);
subplot(2,2,1)
imshow(downed_face_copied)
title('Downsample and Gaussian')

%% Downsample with no Gaussian:
downed_one_Gauss=second_filter(1:8:end,1:8:end,:);
subplot(2,2,2)
imshow(downed_one_Gauss)
title('Downsampled one Gaussian')

%% Upsample with 8 both:

resized_gauss=imresize(downed_face_copied,8);
resized_one_gauss=imresize(downed_one_Gauss,8);

subplot(2,2,3)
imshow(resized_gauss)
title('Upsampled with Gaussian')

subplot(2,2,4)
imshow(resized_one_gauss)
title('Upsampled with one Gaussian')

