% demo for chenvese function
% Copyright (c) 2009, 
% Yue Wu @ ECE Department, Tufts University
% All Rights Reserved  
%%
%-- Chan & Vese method on gray and color image
%   Find contours of objects
close all
clear all

I = imread('texture.jpg');

% Customerlized Mask
% m = ones(200,200);
% m(20:120,20:120) = 1;
seg1 = chenvese(I,'medium',100,0.02,'chan'); %Takes 5-10 secs to show 1st image
seg2 = logchenvese(I,'medium',200,0.2,'chan');% Takes time to start due to calculations 
% Built-in Mask
