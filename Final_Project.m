% Di Mao
% BIOEN 217 
% 12/10/2022
% Final Project Visual Neuron Decoding

% clear all variables and figures
clear all; close all; clc

% load in the visual neuron data
data = load('\Users\Di\Documents\UW\BIOEN 217\Final Project\VisualNeuronData.mat');
% spikeTrain
%   - vector, spiking data
%   - 1 for fire, 0 for not fired
spikeTrain = getfield(data,'spikeTrain');
% stim
%   - 3D array, white noise
stim = getfield(data,'stim');

% determine the sizes of the given data
szSpikeTrain = size(spikeTrain);
% 24000 1
szStim = size(stim);
% 11 11 24000

% create a vector of all times with a spike
timesWithSpike = [];
for time = 1:szSpikeTrain(1)
    if spikeTrain(time) == 1
        timesWithSpike = [timesWithSpike, time];
    end
end

% plot the stimulus with the given delay
%   - delay is currently set to 0, but can be manually changed
delay = 0;
% sums the stimulus at the time of spike, factoring in delay
sumStim = zeros(szStim(1),szStim(2));
for timeSpikeVal = timesWithSpike
    for i = 1:szStim(1)
        for j = 1:szStim(2)
            sumStim(i,j) = sumStim(i,j) + ...
                stim(i,j,timeSpikeVal - delay);
        end
    end
end
% averages the stimulus at the time of spike, removes noise
avgStim = sumStim ./ length(timesWithSpike);
% plots the averaged stimulus
colormap('gray')
imagesc(avgStim)