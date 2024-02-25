% Di Mao
% BIOEN 217 
% 12/02/2022
% Final Project Visual Neuron Decoding Test

clear all; close all; clc

data = load('\Users\Di\Documents\UW\BIOEN 217\Final Project\VisualNeuronData.mat')
spikeTrain = getfield(data,'spikeTrain');
stim = getfield(data,'stim');

szSpikeTrain = size(spikeTrain);
szStim = size(stim);

%{
% Presentation Figure 1
figure(1)
colormap('gray')
imagesc(stim(11,11,1))
%}

sumStim = zeros(11,11);
for i = 1:szStim(1)
    for j = 1:szStim(2)
        for k = 1:szStim(3)
            sumStim(i,j) = sumStim(i,j) + stim(i,j,k);
        end
    end
end
figure(1)
colormap('gray')
imagesc(sumStim)

%{
% Presentation Figure 2
avgStim = zeros(11,11);
for i = 1:szStim(1)
    for j = 1:szStim(2)
        for k = 1:szStim(3)
            avgStim(i,j) = avgStim(i,j) + stim(i,j,k);
        end
    end
end
avgStim = avgStim ./ szStim(3);
figure(1)
colormap('gray')
imagesc(avgStim)
%}