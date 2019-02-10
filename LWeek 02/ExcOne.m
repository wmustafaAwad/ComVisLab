%%BY WALEED MUSTAFA - Tues, 5/2/2019 - CIE 551 (Computer Vision) Course-
%%LWeek 02 - Excersice One

face=imread('face.jpg');
bldng=imread('buildings.jpg');


%% Filters:
fBox=1/9*[1 1 1; 1 1 1; 1 1 1];
fEdge=[-1 -1 -1; -1 8 -1; -1 -1 -1];
fPrewittY=[1 0 -1;1 0 -1;1 0 -1];
fPrewittX=[ 1 1 1; 0 0 0;-1 -1 -1];

%% Add noise:
noisy_bldng=imnoise(bldng,'salt & pepper',0.05);

%% Apply filters:
wrap_type='circular';
Blurred_noisy_bldng=imfilter(noisy_bldng,fBox,wrap_type);
Edge_bldng=imfilter(bldng,fEdge,wrap_type);
im_fPrewittX=imfilter(bldng,fPrewittX,wrap_type);
im_fPrewittY=imfilter(bldng,fPrewittY,wrap_type);

%% Image Cell Array:
images={bldng,noisy_bldng,Blurred_noisy_bldng,Edge_bldng,im_fPrewittX,im_fPrewittY};
titles={'Original Image','Noisy Image','Blurred Noisy','Edge Detection','Prewitt-X','Prewitt-Y'};

for i=1:6
    subplot(2,3,i)
    imshow(images{i})
    title(titles{i})
end

