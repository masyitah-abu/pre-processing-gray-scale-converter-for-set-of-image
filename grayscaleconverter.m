clear
clc
% Tukar path folder ikot image kamu
% main folder
mkdir F:\WORK\Freelancer\amarroslan(ongoing)\grayconveter %ni nk buat folder baru tuk gray scale

% normal 
normal = dir("F:\WORK\Freelancer\amarroslan(ongoing)\Data Chest X-ray\Normal (OK)\*.png"); %ni path folder tuk normal
mkdir F:\WORK\Freelancer\amarroslan(ongoing)\grayconveter\normalgray %create folder tuk normal
for k = 1:length(normal)
    currentfilename = normal(k).name;
    img=imread("F:\WORK\Freelancer\amarroslan(ongoing)\Data Chest X-ray\Normal (OK)\" + currentfilename);
    [rows, columns, numberOfColorChannels] = size(img);
    if numberOfColorChannels == 1
        imwrite(img,fullfile("F:\WORK\Freelancer\amarroslan(ongoing)\grayconveter\normalgray\",currentfilename));
    else
        gray=rgb2gray(img);
        imwrite(gray,fullfile("F:\WORK\Freelancer\amarroslan(ongoing)\grayconveter\normalgray\",currentfilename));
    end
end 

% phenomia
phenomia = [dir("F:\WORK\Freelancer\amarroslan(ongoing)\Data Chest X-ray\Pneumonia (OK)\*jpeg");dir("F:\WORK\Freelancer\amarroslan(ongoing)\Data Chest X-ray\Pneumonia (OK)\*png")]; %ni path folder tuk phenomia
mkdir F:\WORK\Freelancer\amarroslan(ongoing)\grayconveter\phenomiagray %create folder tuk phenomia
for k = 1:length(phenomia)
    currentfilename = phenomia(k).name;
    img=imread("F:\WORK\Freelancer\amarroslan(ongoing)\Data Chest X-ray\Pneumonia (OK)\" + currentfilename);
    [rows, columns, numberOfColorChannels] = size(img);
    if numberOfColorChannels == 1
        imwrite(img,fullfile("F:\WORK\Freelancer\amarroslan(ongoing)\grayconveter\phenomiagray\",currentfilename));
    else
        gray=rgb2gray(img);
        imwrite(gray,fullfile("F:\WORK\Freelancer\amarroslan(ongoing)\grayconveter\phenomiagray\",currentfilename));
    end
end  
 
% covid
covid = [dir("F:\WORK\Freelancer\amarroslan(ongoing)\Data Chest X-ray\COVID-19 (OK)\*jpeg");dir("F:\WORK\Freelancer\amarroslan(ongoing)\Data Chest X-ray\COVID-19 (OK)\*jpg")]; %ni path folder tuk covid
mkdir F:\WORK\Freelancer\amarroslan(ongoing)\grayconveter\covidgray %create folder tuk covid
for k = 1:length(covid)
    currentfilename = covid(k).name;
    img=imread("F:\WORK\Freelancer\amarroslan(ongoing)\Data Chest X-ray\COVID-19 (OK)\" + currentfilename);
    [rows, columns, numberOfColorChannels] = size(img);
    if numberOfColorChannels == 1
        img = im2uint8(img);
        imwrite(img,fullfile("F:\WORK\Freelancer\amarroslan(ongoing)\grayconveter\covidgray\",currentfilename));
    else
        img = im2uint8(img);
        gray=rgb2gray(img);
        imwrite(gray,fullfile("F:\WORK\Freelancer\amarroslan(ongoing)\grayconveter\covidgray\",currentfilename));
    end
end 