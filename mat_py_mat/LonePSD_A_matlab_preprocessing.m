%% Matlab PreProcessing - Multiple PSDs

% Load data
load('dat/ch_dat_one.mat');

%% Calculate Power Spectra

% Calculate a power spectrum with Welch's method
[psd, freqs] = pwelch(ch_dat_one, 500, [], [], s_rate);

% Save the power spectra out to mat files
save('power_spectrum', 'freqs', 'psd');
