%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title : vid2fra
%
% Description :
% - This code reads video file and converts it to image frames!
%
% Written by : Jinwoo Jung
% Written in : 2017/12/14
% Dept. of Geoinformatics/University of Seoul
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
close all;
clc
%% set parameter
vid_path='D:\test\test.wmv'; % set path of video file
out_path='D:\test\out\'; % set path of output (image frames)
out_type='png'; % set type of output

mkdir(out_path);
%% video -> image frame

obj = VideoReader(vid_path);
vid = read(obj);
frames = obj.NumberOfFrames;
img=[];
for x = 1 : frames
    img=vid(:,:,:,x);
    imwrite(img, strcat(out_path,'no_',num2str(x),'.',out_type));
    fprintf('%d\n',100*(x/frames));
end



